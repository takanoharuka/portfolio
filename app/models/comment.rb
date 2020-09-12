class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :tweet

  validates :comment, :user_id, :tweet_id, presence: true
end
