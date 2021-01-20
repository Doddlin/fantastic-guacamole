class Appartment < ApplicationRecord
    belongs_to :estate
    has_many :cases
end
