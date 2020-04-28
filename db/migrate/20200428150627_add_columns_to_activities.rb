class AddColumnsToActivities < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :description_fr, :string
    add_column :activities, :description_eng, :string
    add_column :activities, :duration, :float
    add_column :activities, :local_name, :string
    add_column :activities, :name_eng, :string
    add_column :activities, :name_fr, :string
    add_column :activities, :website, :string

    add_column :activities, :note_hours, :string
    add_column :activities, :note_price, :string
    add_column :activities, :latitude, :float
    add_column :activities, :longitude, :float
    add_column :activities, :address, :string
    add_column :activities, :show, :boolean

    #add_column :activities, :theme, index:true

  end
end
