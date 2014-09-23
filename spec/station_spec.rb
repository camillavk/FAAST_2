require 'station'
require 'passenger_holder'

describe Station do 

let (:station) {Station.new}
let (:train) {double :train}
let (:passenger) {double :passenger, balance: 20}
let (:passenger2) {double :passenger2, balance: 1}

	it "should be able to dock trains" do
		expect{station.dock(train)}.to change{station.train_count}.by 1
	end

	it "should be able to undock trains" do
		station.dock(train)
		expect{station.undock(train)}.to change{station.train_count}.by -1
	end

	it "should transfer trains from one station to another" do
		origin = Station.new
		destination = Station.new
		origin.dock(train)
		origin.transfer(destination)
		expect(destination.train_count).to eq(1)
	end

	it "should be able to check Passenger balance" do
		expect(station.balance_check(passenger)).to eq(20)
	end

end