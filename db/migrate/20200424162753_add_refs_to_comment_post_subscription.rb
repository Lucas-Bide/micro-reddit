class AddRefsToCommentPostSubscription < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :user, foreign_key: true
    add_reference :comments, :post, foreign_key: true
    add_reference :posts, :user, foreign_key: true
    add_reference :posts, :subreddit, foreign_key: true
    add_reference :subscriptions, :user, foreign_key: true
    add_reference :subscriptions, :subreddit, foreign_key: true
  end
end
