require 'train'

describe Train do 

let (:train) {Train.new}
let (:carriage) {double :carriage}

	# it "should be able to initialize with carriages" do
	# 	train = Train.new(:num_carriages => 5)
	# 	expect(train.carriage_count).to eq(5)
	# end

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

	# it "should transfer carriages from one station to another" do
	# 	origin = double :station
	# 	destination = double :station
	# 	allow(origin).to receive(:dock).and_return(:train)
	# 	expect(origin.transfer(destination)).to change{destination.train_count}.by 1
	# end


end