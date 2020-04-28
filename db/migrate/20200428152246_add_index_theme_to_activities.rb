class AddIndexThemeToActivities < ActiveRecord::Migration[5.2]
  def change
    add_reference :activities, :theme, index: true

  end
end
