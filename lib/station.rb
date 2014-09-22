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

	def undock(train)
		@trains.delete(train)
	end

	def transfer(station)
		@trains.each do |train|
			station.dock(undock(train))
		end
	end

end