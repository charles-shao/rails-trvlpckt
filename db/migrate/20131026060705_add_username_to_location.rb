class AddUsernameToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :username, :string
  end
end
