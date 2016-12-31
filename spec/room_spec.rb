require "spec_helper"

describe Room do
	context "New room creation" do
		it "should initialize instance with given index" do
			room = Room.new(2)
			expect(room.number).to eql(2)
			expect(room.visitors).to eql([])
		end
	end

	it "should able to add visitors" do
		room = Room.new(2)
		room.add_visitor(1, "I", 431)
		expect(room.visitors.length).to eql(1)
		expect(room.visitors[0].id).to eql(1)
		expect(room.visitors[0].in).to eql(431)
	end

	it "shouldn't able to add same visitor twice" do
		room = Room.new(2)
		room.add_visitor(1, "I", 431)
		room.add_visitor(1, "O", 435)
		expect(room.visitors.length).to eql(1)
		expect(room.visitors[0].out).to eql(435)
	end

	it "should return total visitors count" do
		room = Room.new(2)
		room.add_visitor(1, "I", 431)
		room.add_visitor(2, "I", 435)
		expect(room.visitors[1].in).to eql(435)
		expect(room.visitors[1].out).to eql(0)
		expect(room.total_visits).to eql(2)
	end

	it "should able to return average time spent by a visitor" do
		room = Room.new(2)
		room.add_visitor(1, "I", 431)
		room.add_visitor(1, "O", 435)
		expect(room.avg_time_spent).to eql(4.0)
	end
end