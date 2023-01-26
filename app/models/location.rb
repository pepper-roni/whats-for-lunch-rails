class Location < ApplicationRecord
  belongs_to :restaurant
  validates :address, :city, :province_code, :country_code, :postal_code, presence: true

  # this needs work... some sort of validation around country and province
end
