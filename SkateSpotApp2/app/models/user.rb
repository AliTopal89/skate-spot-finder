class User < ActiveRecord::Base
	has_many :posts
	has_many :spots

	# Virtual attribute for authenticating by either username or email
	# This is in addition to a real persisted field like 'username'
	# attr_accessor :login
	# Include default devise modules. Others available are:
		# :confirmable, :lockable, :timeoutable and :omniauthable
  	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable #, :authentication_keys => {email: true, login: false}
end
