require 'train'

describe Train do 

	let (:train) {Train.new}
	let (:carriage) {double :carriage}

	def fill_train(carriage)
		train.capacity.times {train.dock(carriage)}
	end

	it "should be able to dock carriages" do
		train.dock(carriage)
		expect(train.carriage_count).to eq(1)
	end

	it "should throw an error when it is full" do
		fill_train(carriage)
		expect(lambda{train.dock(carriage)}).to raise_error "Cannot take more carriages"
	end


	it "should be full" do
		fill_train(carriage)
		expect(train.send(:full?)).to eq true
	end

end