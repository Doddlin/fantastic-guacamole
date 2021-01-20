class Estate < ApplicationRecord
    belongs_to :propowner
    has_many :appartments
end
