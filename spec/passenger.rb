class Passenger

def in_station?
	!@station.nil?
end

def touch_in(station)
	@station = station
end

end