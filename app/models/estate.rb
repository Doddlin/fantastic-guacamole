class Estate < ApplicationRecord
    belongs_to :propowner
    has_many :appartments
    has_many :cases, through: :appartments
end
