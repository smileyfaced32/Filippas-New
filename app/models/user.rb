class User
  include Mongoid::Document
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  field :first_name 
  field :last_name
  field :email
  field :role
  field :newsletter
  field :phone_number
  field :encrypted_password, :limit => 128, :default => "", :null => false
  field :password_salt, :default => "", :null => false
  field :reset_password_token
  field :remember_token
  field :remember_created_at, :type => DateTime
  field :sign_in_count, :type => Integer, :default => 0
  field :current_sign_in_at, :type => DateTime
  field :last_sign_in_at, :type => DateTime
  field :current_sign_in_ip
  field :last_sign_in_ip 
  field :facebook_uid
  field :facebook_token
  field :location_name
  field :location_id
  field :birthday, :type => DateTime
  field :gender
  
  ROLES = %w[admin user]
  
  validates_presence_of :first_name, :last_name, :email
  validates_uniqueness_of :email, :case_sensitive => false
  attr_accessible :first_name, :last_name, :email, :role, :password, :password_confirmation, :remember_me
  
  
end

