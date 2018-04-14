class CreateJios < ActiveRecord::Migration[5.2]
  def change
    create_table :jios do |t|
      t.string :name
      t.string :contact_number

      t.timestamps
    end
  end
end
