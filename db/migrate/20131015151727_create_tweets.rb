class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.integer :brand_id
      t.string :tweet_id
      t.string :tweet_copy
      t.string :tweet_url
      t.datetime :tweet_date

      t.timestamps
    end
  end
end
