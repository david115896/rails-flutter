class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|

      t.datetime :date
      
      t.belongs_to :city, index: true

      t.timestamps
    end
  end
end
