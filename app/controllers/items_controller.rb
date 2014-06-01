class ItemsController < ApplicationController
	

	private
		def item_params
			params.require(:item).permit(:available, :description, :name, :price, :shop_id, :size)
		end
end
