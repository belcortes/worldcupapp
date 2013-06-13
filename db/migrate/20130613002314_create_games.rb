class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.datetime :datetime
      t.string :location
      t.integer :city_id

      t.timestamps
    end
  end
end
