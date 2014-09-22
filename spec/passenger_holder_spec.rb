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

end