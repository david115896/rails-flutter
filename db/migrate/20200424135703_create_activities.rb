class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :image
      t.decimal :price

      t.belongs_to :city, index: true
      
      t.timestamps
    end
  end
end
