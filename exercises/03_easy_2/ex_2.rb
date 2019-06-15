# Build a program that asks a user for the length and with of a room in meters
# and then displays the area of the room in both square meters and square
# feet.

# Note: 1 sqm = 10.7639 sqf

# Do not worry about validating input at this time.

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

def room_size(length, width)
  area_meters   = length * width
  area_feet     = (10.7639 * area_meters ).round(2)
  "The area of the room is #{area_meters} square meters (#{area_feet} square feet)."
end

puts room_size(length, width)

puts room_size(100,10) == "The area of the room is 1000 square meters (10763.9 square feet)."