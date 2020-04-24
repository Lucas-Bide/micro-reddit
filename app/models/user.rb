class User < ApplicationRecord
  has_many :posts
  has_many :comments
  has_many :subscriptions
  has_many :subreddits, through: :subscriptions

  validates :username, presence: true, uniqueness: true, length: { in: 1..20 }
  validates :email, presence: true, uniqueness: true, format: { with: /\A\w+(\.\w+)*@([a-zA-Z]+\.)+com\Z/, message: "needs to follow 'example.words.more@site.address.com'" }
end
