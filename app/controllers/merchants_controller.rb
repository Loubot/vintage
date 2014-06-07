class MerchantsController < ApplicationController
	before_action :authenticate_merchant!

	def show
		@merchant = Merchant.find(params[:id])
		@shop = @merchant.shops.first
	end

	def index
		@merchants = Merchant.all
	end

	def new
		@merchant = Merchant.new
	end

	def create

		@merchant = Merchant.new(merchant_params)
		
		if @merchant.save
			flash[:success] = "Welcome to Vintage.ie. Let's get started"
			redirect_to merchants_path
		else
			flash[:danger] = "Unable to create shop"
			render 'new'
		end
	end

	private

	def merchant_params
		params.require(:merchant).permit(:email, :email_confirmation, :password, :password_confirmation)
	end
end
