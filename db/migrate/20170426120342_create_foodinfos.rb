class CreateFoodinfos < ActiveRecord::Migration
  def change
    create_table :foodinfos do |t|
      t.string "content"
      t.string "title"
      t.string "title2"
      t.timestamps null: false
    end
  end
end
