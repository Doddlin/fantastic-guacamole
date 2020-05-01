class Appartment < ApplicationRecord
    belongs_to :propowner
    has_many :cases
end
