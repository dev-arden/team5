class CreateAnimalinfos < ActiveRecord::Migration
  def change
    create_table :animalinfos do |t|
      t.string "content"
      t.string "title"
      t.timestamps null: false
    end
  end
end
