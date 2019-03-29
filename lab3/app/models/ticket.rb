class Ticket < ApplicationRecord
  belongs_to :Ticket_Type
  belongs_to :Event
end
