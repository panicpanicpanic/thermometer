class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :name
      t.string :twitter_handle
      t.string :twitter_url

      t.timestamps
    end
  end
end
