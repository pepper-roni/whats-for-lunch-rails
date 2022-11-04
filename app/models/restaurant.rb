class Restaurant < ApplicationRecord
    scope :random, -> { order('RANDOM()').first }
    validates :name, presence: true
    has_many :addresses
end
