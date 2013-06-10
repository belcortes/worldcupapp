class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.integer :pop_size
      t.text :fun_fact
      t.text :airport

      t.timestamps
    end
  end
end
