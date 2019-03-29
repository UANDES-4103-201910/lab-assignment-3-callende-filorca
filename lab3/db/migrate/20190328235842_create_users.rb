class CreateUsers < ActiveRecord::Migration[5.2]
  has_Many :Ticket_Order
  def change
    create_table :users do |t|
      t.string :name
      t.string :last_name
      t.string :address
      t.string :email
      t.integer :phone
      t.string :password

      t.timestamps
    end
  end
end
