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
end
