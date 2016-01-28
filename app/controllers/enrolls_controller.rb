class EnrollsController < ApplicationController
	skip_before_action :verify_authenticity_token
	
	def index #GET
		render json: Enroll.all, :include => [:playlist, :song]
	end

	def create #POST
		enroll = Enroll.new(
			playlist_id: params[:playlist_id],
			song_id: params[:song_id]
			)

		if enroll.save
			render json: enroll
		
		end
	end

end
