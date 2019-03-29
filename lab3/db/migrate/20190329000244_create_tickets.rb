class CreateTickets < ActiveRecord::Migration[5.2]
  has_many :Event
  has_many :Ticket_Type
  belongs_to :Ticket_Order
  def change
    create_table :tickets do |t|
      t.references :Ticket_Type, foreign_key: true
      t.references :Event, foreign_key: true

      t.timestamps
    end
  end
end
