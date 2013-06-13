class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.integer :pop_size
      t.text :fun_fact
      t.string :airports
      t.string :stadium_name
      t.integer :stadium_cap

      t.timestamps
    end
  end
end
