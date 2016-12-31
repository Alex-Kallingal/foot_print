require './modules/process_data.rb'
require './modules/room.rb'
require './modules/visitor.rb'

p "Enter the file name: "
details = ProcessData.get_details(gets.chomp)
$rooms = []

details[1..-1].each do |data|
	visitor, room_index, activity, time = data.split
	room = Room.find_or_create(room_index)
	room.add_visitor(visitor, activity, time)
end

$rooms = $rooms.sort_by(&:number)
$rooms.each do |room|
	p "Room #{room.number}, #{room.avg_time_spent.round} minute average visit, #{room.total_visits} visitor(s) total"
end