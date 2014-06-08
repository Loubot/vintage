class ShopsController < ApplicationController
	before_action :authenticate_merchant!

	def shop
		@shop = Shop.find_by_id(params[:id])
	end

	def index
		@shops = Shop.all
	end

	def show
		@shop = Shop.find_by_id(params[:id])
		@item = Item.new
		@items = @shop.items.all
	end

	def new
		@shop = Shop.new
	end

	def create
		@shop = Shop.new(shop_params)
		if @shop.save
			flash[:success] = "New shop created successfuly"
			redirect_to root_url
		else
			flash[:danger] = "Errors occured"
			redirect_to :back
		end
	end

	private

		def shop_params
			params.require(:shop).permit(:address, :facebook, :lat, :lat, :logo, :lon, :name, :twitter, :url, :merchant_id, :description)
		end
end
