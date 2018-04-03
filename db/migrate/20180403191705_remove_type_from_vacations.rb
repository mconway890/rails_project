class RemoveTypeFromVacations < ActiveRecord::Migration[5.1]
  def change
    remove_column :vacations, :type, :string
  end
end
