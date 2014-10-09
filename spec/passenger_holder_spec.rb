require 'passenger_holder'

class Holder
  include PassengerHolder
end

describe PassengerHolder do

let(:holder) { Holder.new }
let(:passenger) {double :passenger}

 		def fill_holder(passenger)
     	holder.capacity.times {holder.accept(passenger)}
    end

    it "should accept passengers" do
      expect{holder.accept(passenger)}.to change{holder.passenger_count}.by 1
    end

    it "should release passengers" do
     	holder.accept(passenger)
     	expect{holder.release(passenger)}.to change{holder.passenger_count}.by -1
    end

   	it "should reject passengers when it is full" do
   		fill_holder(passenger)
   		expect(lambda {holder.full?}).to raise_error"Sorry, it's full"
   	end
end
