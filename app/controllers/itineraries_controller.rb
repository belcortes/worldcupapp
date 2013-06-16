class ItinerariesController < ApplicationController

  def index
    if !current_user
      redirect_to '/users/new'
    else
      @itineraries = current_user.itineraries.all
    # redirect_to new_itinerary_path unless current_user.itineraries >= 1
    # redirect_to new_itinerary_path unless current_user.itineraries.size >= 1
    end
  end

  def new
    @itinerary = current_user.itineraries.new
    @games = Game.all
  end

  def create
    @itinerary = current_user.itineraries.new(params[:itinerary])
    # @itinerary.user_id = current_user.id if current_user
    if @itinerary.save
      redirect_to user_itineraries_path
    else
      render :new
    end
  end

  def show
    @itinerary = Itinerary.find(params[:id])
  end

  def edit
    @itinerary = Itinerary.find(params[:id])
    @games = Game.all
  end

  def update
    @itinerary = Itinerary.find(params[:id])
    if @itinerary.update_attributes(params[:itinerary])
      redirect_to user_itineraries_path
    else
      redirect_to edit_user_itinerary_path
    end
  end

  def destroy
    itinerary = Itinerary.find(params[:id])
    itinerary.destroy
    redirect_to user_itineraries_path
  end
end
