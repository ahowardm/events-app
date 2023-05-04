class Venue < ApplicationRecord
    validates :name, presence: true
    validates :address, presence: true
    validates :capacity, numericality: { only_integer: true }
end
