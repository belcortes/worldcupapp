class User < ActiveRecord::Base
  attr_accessible :name, :email, :password

  has_many :itineraries
  has_many :games, through: :itineraries

  has_secure_password

  validates :email, presence: true, uniqueness: true

end
