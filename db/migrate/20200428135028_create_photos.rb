class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|

      t.string :url
      t.string :admin
      t.integer :pos
      t.string :post_link

      t.belongs_to :activity, index: true
      t.belongs_to :city, index: true


      t.timestamps
    end
  end
end
