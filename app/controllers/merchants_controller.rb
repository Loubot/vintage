class MerchantsController < ApplicationController
	
	def show
		@merchant = Merchant.find(params[:id])
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
			redirect_to @merchant
		else
			flash[:danger] = "Unable to create shop"
			render 'new'
		end
	end

	private

	def merchant_params
		params.require(:merchant).permit!
	end
end
