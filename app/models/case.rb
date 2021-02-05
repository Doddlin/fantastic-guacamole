class Case < ApplicationRecord
    belongs_to :user
    belongs_to :appartment
    has_many :comments, as: :commentable
    has_one :estate, through: :appartment

    enum case_status: { received:0, assigned:1, resolved:2 }
end
