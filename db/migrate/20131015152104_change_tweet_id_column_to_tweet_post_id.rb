class ChangeTweetIdColumnToTweetPostId < ActiveRecord::Migration
  def change
    remove_column :tweets, :tweet_id
    add_column :tweets, :tweet_post_id, :string
  end
end
