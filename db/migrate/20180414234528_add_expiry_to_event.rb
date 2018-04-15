class AddExpiryToEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :expiry, :datetime
  end
end
