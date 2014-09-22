require 'train'

describe Train do 

let (:train) {Train.new}
let (:carriage) {double :carriage}

	it "should be able to dock carriages" do
		train.dock(carriage)
		expect(train.carriage_count).to eq(1)
	end

end