class CreateTicketOrders < ActiveRecord::Migration[5.2]
  has_many :Ticket
  belongs_to :User
  def change
    create_table :ticket_orders do |t|
      t.integer :total
      t.references :User, foreign_key: true
      t.references :Ticket, foreign_key: true

      t.timestamps
    end
  end
end
