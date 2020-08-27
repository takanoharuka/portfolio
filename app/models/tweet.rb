class Tweet < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title,:image,:text,:user_id, presence: true
end
