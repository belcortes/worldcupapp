class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.text :match
      t.time :time
      t.date :date
      t.string :location
      t.integer :stadium_id

      t.timestamps
    end
  end
end
