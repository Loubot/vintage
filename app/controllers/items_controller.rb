class ItemsController < ApplicationController
	before_action :create, only: [:initUpload]
	

	def initUpload
		uploader = AvatarUploader.new
	end
	
	def new
		@item = Item.new
		@sizes = (4..32).step(0.5).to_a
	end

	def create
		uploader = AvatarUploader.new
		@item = Item.create(item_params)
		# flash[:success] = item_params
		
		# redirect_to 'merchants/index'
		if @item.save
			flash[:success] = "New item successfully saved"
			render 'new'
		else
			flash[:danger] = "Could not save item #{@item.errors.full_messages}"
			redirect_to :back
		end
	end


	private
		def item_params
			params.require(:item).permit(:available, :description, :name, :price, :shop_id, :size, :avatar)
		end
end
