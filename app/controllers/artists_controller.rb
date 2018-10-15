class ArtistsController < ApplicationController

	def index
	end

	def show
		@artist = Artist.find(params[:id])
	end

	def new
		@artist = Artist.new
	end

	def create
		@artist = Artist.new(name: params[:artist][:name], bio: params[:artist][:bio])
		@artist.save
		redirect_to artist_path(@artist)
	end

	def edit
		@artist = Artist.find(params[:id])
	end

	def update
		@artist = Artist.find(params[:id])
		@artist.update(name: params[:artist][:name], bio: params[:artist][:bio])
		redirect_to artist_path(@artist)
	end

private
	def artist_params
		params.require(:artist) .permit(:name, :bio)
	end

#end

end
