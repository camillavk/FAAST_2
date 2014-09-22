require_relative 'passenger_holder'

class Carriage

	include PassengerHolder

	def initialize(capacity = 20)
		@capacity = capacity
		@passengers = []
	end

end