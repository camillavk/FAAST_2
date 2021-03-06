class Passenger

	DEFAULT_BALANCE = 20
	attr_accessor :balance

def initialize(options = {})
	@balance = options.fetch(:balance, DEFAULT_BALANCE)
end

def charge(amount)
	@balance -= amount
end

def topup(amount)
	@balance += amount
end

def in_station?
	!@station.nil?
end

def touch_in(station)
	raise "You do not have sufficient funds" if balance < 2
	@station = station
end

def touch_out(station)
	@station = nil
	charge(2)
end

end