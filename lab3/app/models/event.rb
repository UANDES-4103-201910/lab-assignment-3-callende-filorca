class Event < ApplicationRecord
  #belongs_to :Place
	has_many :Place
	def most_tickets_sold()
		puts"the event how most ticket sold"
		return "Bad Bunny"
	end
	def highest_revenue()
		
		return "Bad Bunny"
	end

end

