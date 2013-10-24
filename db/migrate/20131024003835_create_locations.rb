class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :img_url
      t.string :lat
      t.string :lng

      t.timestamps
    end
  end
end
