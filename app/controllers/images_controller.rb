class ImagesController < ApplicationController

	def new
		@image = Image.new
	end
	
	def index
		@images = Image.all
	end
	

	def create
		# render plain: params[:image].inspect
		@image = Image.new image_params
		@image.save
		redirect_to @image
	end
	
	def show
		@image = Image.find params[:id]	
	end
	
	def edit
		@image = Image.find params[:id]
	end

	def update
		@image = Image.find params[:id]
		@image.update image_params
		redirect_to @image
	end
	
	def destroy
		@image = Image.find params[:id]
		@image.destroy	
		redirect_to images_path	
	end
	
	
	private
	def image_params
		params.require(:image).permit(:description)
	end
	
end
