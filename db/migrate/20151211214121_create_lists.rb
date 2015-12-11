class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :name
      t.text :description
      t.integer :number_of_likes
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
