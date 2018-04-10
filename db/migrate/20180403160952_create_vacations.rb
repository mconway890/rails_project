class CreateVacations < ActiveRecord::Migration[5.1]
  def change
    create_table :vacations do |t|
      t.string :name
      t.string :destination
      t.date :start
      t.date :end
      t.integer :user_id
      t.integer :item_id
      t.integer :activity_id
      t.timestamps
    end
  end
end
