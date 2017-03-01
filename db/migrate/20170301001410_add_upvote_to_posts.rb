class AddUpvoteToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :upvote, :integer, default: 1
  end
end
