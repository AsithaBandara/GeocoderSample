class Location < ActiveRecord::Base
  validates :latitude, presence: true 
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
end
