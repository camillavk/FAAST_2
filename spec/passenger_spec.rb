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

	it "should be rejected if balance is below 2GBP" do
		passenger2 = Passenger.new(:balance => 1)
		expect(lambda{passenger2.touch_in(station)}).to raise_error"You do not have sufficient funds"
	end

	it "should have charge passenger on touch out" do
		passenger.touch_in(station)
		passenger.touch_out(station)
		expect(passenger.balance).to eq(18)
	end

end