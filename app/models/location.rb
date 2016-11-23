class Location < ActiveRecord::Base
  validates :latitude, presence: true
  geocoded_by :address
  before_validation :geocode, :if => :address_changed?
end
