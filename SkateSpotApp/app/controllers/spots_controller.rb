class SpotsController < ApplicationController

	def index
		@spots = Spot.all
		# @city = @spot.city
		# @address = @spot.address
		# @description = @spot.description

	end

	def show
		@spot = Spot.find(params[:id])
		

	end

	def new
		@spot = Spot.new
	
	end

	def create

	end

	private 
		def spots_params
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