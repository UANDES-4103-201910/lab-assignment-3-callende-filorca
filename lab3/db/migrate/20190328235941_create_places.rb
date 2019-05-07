class CreatePlaces < ActiveRecord::Migration[5.2]
  belongs_to :Event
  def change
    create_table :places do |t|
      t.string :name
      t.string :address
      t.integer :capacity

      t.timestamps
    end
  end
end
