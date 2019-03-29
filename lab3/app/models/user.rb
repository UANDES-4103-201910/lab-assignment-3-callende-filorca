class User < ApplicationRecord
	def most_expensive_ticket_bought()
		puts "The most expensive ticket is:"
		#Order.where(user: self).order(:total).limit(1)
		return "Ticket"
	end

	def most_expensive_ticket_bought_between(D_start,D_end)
		puts "The most expensive ticket is:"
		#Order.where(D_start > date and D_end < created_at) ...
		return "id"
	end
	
	def last_event()
		puts "The last event you assist"
		return "Luis Miguel"
	end

end

