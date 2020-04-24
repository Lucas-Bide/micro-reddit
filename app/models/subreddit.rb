class Subreddit < ApplicationRecord
  has_many :posts
  has_many :users, through: :subscriptions, dependent: :destroy

  validates :title, presence: true, uniqueness: true, length: { in: 1..30 }
  validates :description, presence: true, length: { in: 1..500 }
end
