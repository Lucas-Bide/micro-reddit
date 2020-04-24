class Post < ApplicationRecord
  belongs_to :user
  belongs_to :subreddit
  has_many :comments

  validates :title, presence: true, uniqueness: true, length: { in: 1..30 }
  validates :body, presence: true, length: { in: 1..500 }
end
