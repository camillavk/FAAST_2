class Train

	DEFAULT_CAPACITY = 5
	DEFAULT_CARRIAGES = 1
	attr_reader :capacity

	def initialize(options = {})
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
		@carriages = []
	end

	def dock(carriage)
		raise "Cannot take more carriages" if full?
		@carriages << carriage
	end

	def carriage_count
		@carriages.count 
	end

	
private

	def full?
		carriage_count == DEFAULT_CAPACITY
	end

end