require "spec_helper"

describe Room do

	it "shoud able to initialize visitor object with given id" do
		visitor = Visitor.new(1)
		expect(visitor.id).to eql(1)
	end

	it "shoud able to update in and out attributes" do
		visitor = Visitor.new(2)
		visitor.update("I", 431)
		visitor.update("O", 435)
		expect(visitor.id).to eql(2)
		expect(visitor.in).to eql(431)
		expect(visitor.out).to eql(435)
	end

	it "shoud update in if activity is I " do
		visitor = Visitor.new(3)
		visitor.update("I", 431)
		expect(visitor.id).to eql(3)
		expect(visitor.in).to eql(431)
		expect(visitor.out).to eql(0)
	end

	it "shoud update out if activity is O " do
		visitor = Visitor.new(4)
		visitor.update("0", 431)
		expect(visitor.id).to eql(4)
		expect(visitor.in).to eql(0)
		expect(visitor.out).to eql(431)
	end

	it "shoud able to return total time spent by the user" do
		visitor = Visitor.new(5)
		visitor.update("I", 431)
		visitor.update("O", 435)
		expect(visitor.id).to eql(5)
		expect(visitor.total_time).to eql(4)
	end

end