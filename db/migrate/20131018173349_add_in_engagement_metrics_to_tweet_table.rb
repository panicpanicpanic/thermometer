class AddInEngagementMetricsToTweetTable < ActiveRecord::Migration
  def change
    add_column :tweets, :tweet_retweets,          :integer
    add_column :tweets, :tweet_favs,              :integer
    add_column :tweets, :tweet_total_engagements, :integer
  end
end
