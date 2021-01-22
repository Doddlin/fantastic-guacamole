class Comment < ApplicationRecord
    belongs_to :commentable, polymorphic: true
    has_many :comments, as: :commentable
    has_one :user
end
