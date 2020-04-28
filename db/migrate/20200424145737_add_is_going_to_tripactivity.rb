class AddIsGoingToTripactivity < ActiveRecord::Migration[5.2]
  def change
    add_column :tripactivities, :ongoing, :boolean
  end
end
