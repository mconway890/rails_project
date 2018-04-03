class CreateVacations < ActiveRecord::Migration[5.1]
  def change
    create_table :vacations do |t|
      t.string :name
      t.string :destination
      t.string :type
      t.date :start
      t.date :end

      t.timestamps
    end
  end
end
