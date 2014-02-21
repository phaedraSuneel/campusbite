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
  attr_accessible :first_name, :last_name, :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  has_many :authentications, :dependent => :destroy

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
end
