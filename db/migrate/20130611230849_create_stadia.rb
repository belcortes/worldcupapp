class CreateStadia < ActiveRecord::Migration
  def change
    create_table :stadia do |t|
      t.string :name
      t.text :location
      t.integer :capacity
      t.integer :city_id

      t.timestamps
    end
  end
end
