class CreateMyposts < ActiveRecord::Migration
  def change
    create_table :myposts do |t|
      t.string "content"
      t.string "title"
      t.string "writer"
      t.timestamps null: false
    end
  end
end
