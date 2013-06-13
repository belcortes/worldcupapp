class CreateGamesItinerariesTable < ActiveRecord::Migration
  def change
  	create_table :games_itineraries, :id => false do |t|
  		t.integer :game_id
  		t.integer :itinerary_id
  	end
  end
end
