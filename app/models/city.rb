class City < ActiveRecord::Base
  attr_accessible :airport, :fun_fact, :name, :pop_size, :stadium_id

  has_one :stadium
  has_many :games, through: :stadium
end
