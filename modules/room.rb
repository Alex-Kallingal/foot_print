class Room

	attr_accessor :number, :visitors

	def initialize(index)
		@number = index.to_i
		@visitors = []
	end

	# creates room instance if not created
	# stores the new instance to $room global variable
	def self.find_or_create(number)
		room = $rooms.find{|r| r.number == number.to_i}
		unless room
			room = self.new(number)
			$rooms << room
		end
		room
	end

	# Addes new visitor to the room
	# updates visitor details if already exists
	def add_visitor(id, activity, time)
		visitor = self.visitors.find{|v| v.id == id }
		if visitor
			visitor.update(activity, time)
		else
			visitor = Visitor.new(id)
			visitor.update(activity, time)
			self.visitors << visitor
		end
	end

	# returns total number of the visitors for a specific room
	def total_visits
		self.visitors.length
	end

	# calculates the avg time spent by a visitor in a specific room
	def avg_time_spent
		total_time = self.visitors.inject(0){|sum,v| sum + v.total_time }.to_f
		avg_time = total_time/self.total_visits
	end

end