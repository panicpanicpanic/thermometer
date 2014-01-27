class CreateTweetMetrics < ActiveRecord::Migration
  def change
    create_table :tweet_metrics do |t|
      t.integer :tweet_id
      t.integer :tweet_retweets
      t.integer :tweet_favs
      t.integer :tweet_replies
      t.integer :tweet_total_engagements

      t.timestamps
    end
  end
end
