class CreateBestmovies < ActiveRecord::Migration
  def change
    create_table :bestmovies do |t|
      t.string "content"
      t.string "title"
      t.timestamps null: false
    end
  end
end
