class CreateTicketTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :ticket_types do |t|
      t.references :User, foreign_key: true
      t.references :Eventos, foreign_key: true
      t.integer :total

      t.timestamps
    end
  end
end
