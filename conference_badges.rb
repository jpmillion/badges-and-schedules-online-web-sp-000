# Write your code here.
def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(array)
  return array.map { |name| badge_maker(name) }
end

def assign_rooms(array)
  return array.map.each_with_index { |item, index| "Hello, #{item}! You'll be assigned to room #{index + 1}!"}
end

def printer(attendees)
  badge_messages = batch_badge_creator(attendees)
  room_assignments = assign_rooms(attendees)
  badge_messages.each { |message| puts message }
  room_assignments.each { |assignment| puts assignment }
end