require 'station'
require 'passenger_holder'

describe Station do 

	# it_behaves_like "a PassengerHolder"

let (:station) {Station.new}
let (:train) {double :train}

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

end