class AddTravelerToVacations < ActiveRecord::Migration[5.1]
  def change
    add_column :vacations, :traveler, :string
  end
end
