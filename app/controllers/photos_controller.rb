class PhotosController < ApplicationController

	def index
		@item = Item.find(params[:id])
		@photos = @item.photos
	end

	def create
		@photo = Photo.create(photo_params)
	end

	def destroy
		@photo = Photo.find(params[:id])
		@item = @photo.item
		@photo.destroy
		flash[:danger] = "Photo successfully deleted!"
		redirect_to edit_item_path(@item)
	end
	
	private
	def photo_params
		params.require(:photo).permit(:name, :item_id, :avatar)
	end
end
