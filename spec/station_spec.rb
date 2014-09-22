require 'station'

describe Station do 

let (:station) {Station.new}
let (:train) {double :train}

	it "should be able to dock trains" do
		expect{station.dock(train)}.to change{station.train_count}.by 1
	end

	it "should be able to undock trains" do
		station.dock(train)
		expect{station.undock(train)}.to change{station.train_count}.by -1
	end

end