class CreateBucketlists < ActiveRecord::Migration
  def change
    create_table :bucketlists do |t|
      t.string "content"
      t.string "title"
      t.timestamps null: false
    end
  end
end
