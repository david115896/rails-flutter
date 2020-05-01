class AddDateStartAndDateEndToTripTables < ActiveRecord::Migration[5.2]
  def change
    rename_column :trips, :date, :date_start
    add_column :trips, :date_end, :datetime
    add_column :trips, :cost, :float

  end
end
