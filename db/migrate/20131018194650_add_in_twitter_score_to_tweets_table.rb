class AddInTwitterScoreToTweetsTable < ActiveRecord::Migration
  def change
    add_column :tweets, :tweet_score, :float
  end
end
