class Station

	include PassengerHolder

	def initialize
		@trains = []
	end

	def dock(train)
		@trains << train
	end

	def train_count
		@trains.count 
	end

end