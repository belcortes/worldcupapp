 class ItinerariesController < ApplicationController

  def index
    if current_user.itineraries
      @itineraries = Itinerary.all
    else
      redirect_to new_itinerary_path
    end
  end

  def new
    @itinerary = Itinerary.new
  end

  def create
    @itinerary = Itinerary.new(params[:itinerary])
    if @itinerary.save
      redirect_to itineraries_path
    else
      render :new
    end
  end

  def show
    @itinerary = Itinerary.find(params[:id])
  end

  def edit
    @itinerary = Itinerary.find(params[:id])
  end

  def update
    itinerary = Itinerary.find(params[:id])
    if itinerary.update_attributes(params[:itinerary])
      redirect_to itineraries_path
    else
      redirect_to edit_itinerary_path
    end
  end

  def destroy
    itinerary = Itinerary.find(params[:id])
    itinerary.destroy
    redirect_to :back
  end
end