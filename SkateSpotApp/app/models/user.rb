class User < ActiveRecord::Base
	
	has_many :posts

	validates :email, :encrypted_password presence: true

	devise :database_authenticatable, :registerable,
		   :recoverable, :rememberable, :trackable, :validatable
end