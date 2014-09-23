require 'train'

describe Train do 

let (:train) {Train.new}
let (:carriage) {double :carriage}

	def fill_train(carriage)
		5.times {train.dock(carriage)}
	end

	it "should be able to dock carriages" do
		train.dock(carriage)
		expect(train.carriage_count).to eq(1)
	end

	it "should throw an error when it is full" do
		fill_train(carriage)
		expect(lambda{train.full?}).to raise_error"Cannot take more carriages"
	end

end