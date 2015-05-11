class SpotsController < ApplicationController

	def index
		@spots = Spot.all


	end

	def show
		@spot = Spot.find(params[:id])
		@city = @spot.city
		@address = @spot.address
		@description = @spot.description
		

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
				:smoothness,
				:spot,
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