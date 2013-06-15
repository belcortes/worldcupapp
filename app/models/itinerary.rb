class Itinerary < ActiveRecord::Base
  attr_accessible :end_date, :name, :start_date, :user_id

  has_and_belongs_to_many :games

  validates :name, presence: true
  validate :validate_end_date_before_start_date
  def validate_end_date_before_start_date
    if end_date && start_date
      errors.add(:end_date, "invalid date") if end_date <= start_date
    end
  end
end
