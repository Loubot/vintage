class PhotosController < ApplicationController

	def index
		@item = Item.find(params[:id])
		@photos = @item.photos
	end

	def create
		@photo = Photo.create(photo_params)
	end
	
	private
	def photo_params
		params.require(:photo).permit(:name, :item_id, :avatar)
	end
end
