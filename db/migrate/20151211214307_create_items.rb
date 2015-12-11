class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.boolean :status
      t.text :category
      t.integer :number_of_likes
      

      t.timestamps null: false
    end
  end
end
