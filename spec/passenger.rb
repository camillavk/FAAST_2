class Passenger

	include PassengerHolder

def in_station?
	!@station.nil?
end

def touch_in(station)
	@station = station
end

def touch_out(station)
	@station = nil
end

end