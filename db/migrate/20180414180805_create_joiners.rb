class CreateJoiners < ActiveRecord::Migration[5.2]
  def change
    create_table :joiners do |t|
      t.references :jio, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
