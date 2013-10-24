class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :message
      t.string :author
      t.integer :location_id

      t.timestamps
    end
  end
end
