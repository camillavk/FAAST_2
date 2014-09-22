module PassengerHolder

	DEFAULT_CAPACITY = 40

     def initialize(options = {})
     	@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
      @passengers ||= []
     end

     def capacity
     	@capacity
     end

     def accept(passenger)
        @passengers << passenger
     end

     def release(passenger = nil)
     		@passengers.delete(passenger)
     	end

     def passenger_count
        @passengers.count
     end

     def full?
     	raise "Sorry, it's full" if passenger_count == capacity
     end

end