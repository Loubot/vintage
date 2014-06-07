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
			redirect_to edit_merchant_path(@merchant)
		else
			flash[:danger] = "Unable to create shop"
			render 'new'
		end
	end

	def edit
		@merchant = Merchant.find(params[:id])
	end

	def update
		@merchant = Merchant.find(current_merchant.id)
		if @merchant.update_attributes(merchant_params)
			flash[:success] = 'Good stuff'
			redirect_to edit_merchant_path(@merchant)
		else
			flash[:danger] = "Nope #{@merchant.errors.full_messages}"
			redirect_to edit_merchant_path(@merchant)
		end
	end

	private

	def merchant_params
		params.require(:merchant).permit(:first_name, :last_name, :address, :website, :phone)
	end
end
