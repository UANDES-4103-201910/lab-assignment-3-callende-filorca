class TicketOrder < ApplicationRecord
  belongs_to :User
  belongs_to :Ticket
end
