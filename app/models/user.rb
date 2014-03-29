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
  attr_accessible :first_name, :last_name, :email, :password, :password_confirmation, :remember_me, :school_name
  # attr_accessible :title, :body
  has_many :authentications, :dependent => :destroy
  has_many :orders, :dependent => :destroy
  has_one :cart, :dependent => :destroy
  has_many :addresses, :dependent => :destroy 
  has_many :favorites, :dependent => :destroy
  
  before_create :add_default_role

  def add_default_role
    self.add_role :user if self.roles.blank?
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
end
