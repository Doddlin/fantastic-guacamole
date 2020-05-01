class Case < ApplicationRecord
    belongs_to :user
    belongs_to :appartment
    has_many :comments, as: :commentable
end
