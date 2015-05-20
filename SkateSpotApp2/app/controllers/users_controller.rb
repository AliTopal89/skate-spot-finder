class UsersController < ApplicationController

	def show
		sign_out :user
		redirect_to root_path
	end
	# this is an interesting controller action, what was the use case for this?
end
