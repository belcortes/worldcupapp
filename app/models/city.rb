class City < ActiveRecord::Base
  attr_accessible :airports, :fun_fact, :name, :pop_size, :stadium_cap, :stadium_name, :image

  has_many :games
end
