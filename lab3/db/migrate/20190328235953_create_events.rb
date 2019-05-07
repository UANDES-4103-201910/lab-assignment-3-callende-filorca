class CreateEvents < ActiveRecord::Migration[5.2]
  has_many :Place
  belong_to :Ticket
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.date :date
      t.references :Place, foreign_key: true

      t.timestamps
    end
  end
end
