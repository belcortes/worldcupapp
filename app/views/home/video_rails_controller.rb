class VideoRailsController < ActionController::Base
  
  def index
  	@videos=VideoRails.all
  end

  def show
  	@video = VideoRails.find(params[:id])
  end

   def new
  	puts @video = VideoRails.new
  end


end