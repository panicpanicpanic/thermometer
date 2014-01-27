class AddPromotedBooleanLogicToTweetsTable < ActiveRecord::Migration
  def change
    add_column :tweets, :promoted_tweet, :boolean
  end
end
