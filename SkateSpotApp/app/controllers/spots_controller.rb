class SpotsController < ApplicationController

	def index
		@spots = Spot.all

	end

	def show

	end

	def new
		@spot = Spot.new
	
	end

	def create

	end
end