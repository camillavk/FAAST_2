class Train

	DEFAULT_CAPACITY = 5
	DEFAULT_CARRIAGES = 1

	def initialize(options = {})
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
		@carriages = []
		# options.fetch(:num_carriages, DEFAULT_CARRIAGES).times {dock(Carriage.new)}
	end

	def dock(carriage)
		@carriages << carriage
	end

	def carriage_count
		@carriages.count 
	end

	def full?
		raise "Cannot take more carriages" if carriage_count == DEFAULT_CAPACITY
	end

end