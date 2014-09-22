class Train

	include PassengerHolder

	def initialize
		@carriages = []
	end

	def dock(carriage)
		@carriages << carriage
	end

	def carriage_count
		@carriages.count 
	end

end