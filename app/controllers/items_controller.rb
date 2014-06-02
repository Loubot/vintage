class ItemsController < ApplicationController
	before_action :size_range, only: [:new]
	
	def new
		@item = Item.new
		
	end

	def create
		@item = Item.create(item_params)
		# flash[:success] = item_params
		# redirect_to :back
		if @item.save
			flash[:success] = "New item successfully saved"
			render 'new'
		else
			flash[:danger] = "Could not save item #{@item.errors.full_messages}"
			redirect_to :back
		end
	end


	def size_range
		@sizes = (4..32).step(0.5).to_a
	end	

	private
		def item_params
			params.require(:item).permit(:available, :description, :name, :price, :shop_id, :size, :image1)
		end
end
