class Tweet < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title,:image,:text,:user_id, presence: true

  def self.search(search)
    if search != ""
      Tweet.where('text LIKE(?)', "%#{search}%")
    else
      Tweet.all
    end
  end
end
