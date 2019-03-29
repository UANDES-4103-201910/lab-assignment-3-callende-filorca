json.extract! ticket, :id, :Ticket_Type_id, :Event_id, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
