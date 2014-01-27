class AddOverIndexingBooleanLogicColumnToTweetsTable < ActiveRecord::Migration
  def change
    add_column :tweets, :over_indexing, :boolean
  end
end
