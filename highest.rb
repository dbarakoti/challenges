# X sort through an array of numbers and give the highest number of an array without using .max.
# my_array = [5, 9, 18, 20, 30]

# highest = 0

# my_array.each do |x|
# 	if x > highest
# 		highest = x
# 	end
# end

# puts highest

puts "Enter numbers to check the highest"

new_array = []

number = 0

highest = 0

until number == 5
	my_array = gets.chomp.to_i
	new_array << my_array

	number += 1
end

puts "the array is : #{new_array}"

new_array.each do |x|
	if x > highest
		highest = x
	end
end
puts "the highest number is: #{highest}"