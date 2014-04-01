class User < ActiveRecord::Base
  
  rolify

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :first_name, :last_name, :email, :password, :password_confirmation, :remember_me, :school_name, :customer_id
  # attr_accessible :title, :body
  has_many :authentications, :dependent => :destroy
  has_many :orders, :dependent => :destroy
  has_one :cart, :dependent => :destroy
  has_many :addresses, :dependent => :destroy 
  has_many :favorites, :dependent => :destroy
  has_many :reviews, :dependent => :destroy  
  has_many :cards

  accepts_nested_attributes_for :addresses

  before_create :add_default_role

  after_create :add_customer_id

  def add_default_role
    self.add_role :user if self.roles.blank?
  end


  def add_customer_id
    Braintree::Configuration.environment = :sandbox
    Braintree::Configuration.merchant_id = "6q6zvwjk33nr2wh6"
    Braintree::Configuration.public_key = "z8wb4mz95s5hj74g"
    Braintree::Configuration.private_key = "fca0105a4b3e363f763ffc31a5d69ce8"
    result = Braintree::Customer.create(
      :id => "customer_" + self.id.to_s,
      :first_name => self.first_name
    )
    if result.success?
      self.customer_id = result.customer.id
      self.save
    end  
  end 

  def user_admin?
    self.has_role? :admin
  end

  def name
    self.first_name + " " + self.last_name
  end

  def get_cart
    self.cart ||= self.create_cart
  end

  def self.get_cart(token,current_user)
    cart = current_user.get_cart unless current_user.nil?
    cart = Cart.find_by_token(token) unless token.nil?
    if cart.nil?
      cart = Cart.create :token => SecureRandom.urlsafe_base64(nil, false)
    end
    return cart
  end

  def can_review?(restaurant)
    !self.ordered?(restaurant) and self.review?(restaurant)
  end

  def ordered?(restaurant)
    self.orders.find_by_restaurant_id(restaurant.id).blank? 
  end 
  
  def review?(restaurant)
    unless self.reviews.blank?
      self.reviews.find_by_restaurant_id(restaurant.id).blank? 
    else
      true
    end  
  end  


end
