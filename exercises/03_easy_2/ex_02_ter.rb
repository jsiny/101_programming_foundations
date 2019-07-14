puts 'Enter the length of the room in meters:'
length = gets.chomp.to_f

puts 'Enter the width of the room in meters:'
width = gets.chomp.to_f

area_sqm = length * width
area_sqf = (area_sqm * 10.7639).round(2)

puts "The area of the room is #{area_sqm} square meters"\
      "(#{area_sqf} square feet)"
