class ShopsController < ApplicationController
	def shop
		@shop = Shop.find_by_id(params[:id])
	end

	def index
		@shops = Shop.all
	end

	def show
		@shop = Shop.find_by_id(params[:id])
	end

	def new
		@shop = Shop.new
	end

	def create
		@shop = Shop.new(params[:shop])
		if @shop.save
			flash[:success] = "New shop created successfuly"
			redirect_to root_url
		else
			flash[:danger] = "Errors occured"
			redirect_to :back
		end
	end
end
