class PostsController < ApplicationController 
	
	def index
		@posts = Post.all
		@post = Post.new
	end

	def new
		@post = Post.new
	end

	def create
		@spot = Spot.find(params[:spot_id])
		@post = @spot.posts.build(post_params)
		if @post.save
			redirect_to @spot
		else
			render :new
		end
	
	end

	def show
		@post = Post.find(params[:id])

	end

	private
	def post_params
			params.require(:post).permit(
				:comments,
				:img_url,
				:video_url,
				:spot_id
				)
	end

end