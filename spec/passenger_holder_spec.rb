require 'passenger_holder'

class Holder
     include PassengerHolder
end

describe PassengerHolder do

let(:holder) { Holder.new }
let(:passenger) {double :passenger}

     it "should accept passengers" do
          expect{holder.accept(passenger)}.to change{holder.passenger_count}.by 1
     end

     it "should release passengers" do
     			holder.accept(passenger)
     			expect{holder.release(passenger)}.to change{holder.passenger_count}.by -1
     end

end