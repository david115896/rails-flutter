class CreateThemelists < ActiveRecord::Migration[5.2]
  def change
    create_table :themelists do |t|
      t.belongs_to :activity, index: true

      t.belongs_to :theme, index: true
      t.timestamps
    end
  end
end
