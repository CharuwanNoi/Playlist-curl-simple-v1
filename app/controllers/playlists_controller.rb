class PlaylistsController < ApplicationController

	skip_before_action :verify_authenticity_token
	
	def index #GET
		render json: Playlist.all
	end

	def show
		playlist = Playlist.find(params[:id])	
	end

	def create #POST
		playlist = Playlist.new(playlist_params)

		if playlist.save
			render json: playlist, status: :created, lacation: playlist
		end
	end

	def update #PUT
		playlist = Playlist.find(params[:id])

		if playlist.update_attributes(playlist_params)
			render json: playlist, status: 200
		end
	end

	def destroy #DELETE
		playlist = Playlist.find(params[:id])

		if playlist.destroy
			head :no_content
		
		end
	end

	private 
		def playlist_params
			params.require(:playlist).permit(:name, :category)
	
		end


end
