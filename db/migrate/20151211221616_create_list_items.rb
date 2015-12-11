class CreateListItems < ActiveRecord::Migration
  def change
    create_table :list_items do |t|

      t.belongs_to :list
      t.belongs_to :item 

      t.timestamps null: false
    end
  end
end
