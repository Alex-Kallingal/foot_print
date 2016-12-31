class Visitor

	attr_accessor :id, :in, :out 

	def initialize(id)
		@id = id
		@in = 0
		@out = 0
	end

	# calculate total time spent by a user
	# out time - in time
	def total_time
		self.out - self.in
	end

	# updates visitors in and out times
	# if activity is I update in time
	# if activity is O update out time 
	def update(activity, time)
		if activity.eql? "I"
			self.in = time.to_i
		else
			self.out = time.to_i
		end
	end
end