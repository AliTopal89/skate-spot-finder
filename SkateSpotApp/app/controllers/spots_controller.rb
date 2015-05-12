class SpotsController < ApplicationController

	def index
		@spots = Spot.all
		@spot = Spot.new


	end

	def show
		@spot = Spot.find(params[:id])
		@city = @spot.city
		@address = @spot.address
		@description = @spot.description
		@spot_quality = @spot.spot_quality
		@smoothness = @spot.smoothness
		@human_traffic = @spot.human_traffic
		@security = @spot.security
		@posts = @spot.posts
		@post = Post.new

	end

	def new
		@spot = Spot.new
	
	end

	def create
		@spot = Spot.new(spot_params)
		if @spot.save
			redirect_to @spot
		else
			render :new
		end

	end

	private 

		def spot_params
			params.require(:spot).permit(
				:city,
				:address,
				:description,
				:spot_quality,
				:smoothness,
				:human_traffic,
				:security
				)
		end
	
end
		# t.string :city
  #   	t.string :address, :null => false
  #   	t.string :description
  #   	t.integer :smoothness
  #   	t.integer :spot
  #   	t.integer :human_traffic
  #   	t.integer :security