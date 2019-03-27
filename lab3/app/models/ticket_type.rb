class TicketType < ApplicationRecord
  belongs_to :User
  belongs_to :Eventos
end
