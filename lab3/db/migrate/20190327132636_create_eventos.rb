class CreateEventos < ActiveRecord::Migration[5.2]
  def change
    create_table :eventos do |t|
      t.string :name
      t.string :description
      t.date :start_date
      t.references :Event, foreign_key: true

      t.timestamps
    end
  end
end
