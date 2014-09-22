module PassengerHolder

     def initialize
          @passengers ||= []
     end

     def accept(passenger)
        @passengers << passenger
     end

     def release(passenger)
     		@passengers.delete(passenger)
     	end

     def passenger_count
        @passengers.count
     end

end