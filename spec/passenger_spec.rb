require 'passenger'

describe Passenger do 

let (:passenger) {Passenger.new}
let (:station) { double :station }

	it "should allow account balance to be set on initialize" do
		passenger = Passenger.new(:balance => 15)
		expect(passenger.balance).to eq(15)
	end

	it "should be able to be charged and reduce balance" do
		expect(passenger.charge(2)).to eq(18)
	end

	it "should be able to topup balance" do
		expect(passenger.topup(2)).to eq(22)
	end

	it "should be able to touch in at a station" do
  	passenger.touch_in(station)
		expect(passenger.in_station?).to eq(true)
	end

	it "should be able to touch out of a station" do
		passenger.touch_in(station)
		passenger.touch_out(station)
		expect(passenger.in_station?).to eq(false)
	end

end