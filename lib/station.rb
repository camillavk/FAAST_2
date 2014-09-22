require_relative 'passenger_holder'

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

	def balance_check(passenger)
		passenger.balance
	end

end