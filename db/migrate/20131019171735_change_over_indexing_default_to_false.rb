class ChangeOverIndexingDefaultToFalse < ActiveRecord::Migration
  def change
    change_column :tweets, :over_indexing, :boolean, :default => false
  end
end
