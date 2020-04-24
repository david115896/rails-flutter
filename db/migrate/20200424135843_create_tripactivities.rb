class CreateTripactivities < ActiveRecord::Migration[5.2]
  def change
    create_table :tripactivities do |t|
      t.belongs_to :activity, index: true

      t.belongs_to :trip, index: true
      t.timestamps
    end
  end
end
