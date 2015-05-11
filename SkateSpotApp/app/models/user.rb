class User < ActiveRecord::Base
	
	has_many :posts
	has_many :spots

	# validates :email, :encrypted_password presence: true

	devise :database_authenticatable, :registerable,
		   :recoverable, :rememberable, :trackable, :validatable
end