class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :item_category
      t.integer :user_id
      t.integer :vacation_id
      t.timestamps
    end
  end
end
