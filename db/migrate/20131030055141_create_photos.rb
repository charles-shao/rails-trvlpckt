class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :filepath
      t.integer :location_id

      t.timestamps
    end
  end
end
