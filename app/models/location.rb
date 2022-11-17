class Location < ApplicationRecord
  belongs_to :restaurant
  validates :address, :city, :province_code, :country_code, :postal_code, presence: true
end
