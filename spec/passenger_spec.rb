require 'passenger'

describe Passenger do 

let (:passenger) {Passenger.new}
let (:station) { double :station }

	it "should be able to touch in at a station" do
  	passenger.touch_in(station)
		expect(passenger.in_station?).to eq(true)
	end

end