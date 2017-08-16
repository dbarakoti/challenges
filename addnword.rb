require 'pry'
require 'humanize'
# Have a user insert 10 numbers which are shoveled into an array.

# Add all the numbers in the array.

# Print out the answer in word form.


my_array = []

numbers = 0

puts "Enter ten numbers you like"


until numbers == 10	
	my_number = gets.chomp.to_i
	my_array << my_number
	numbers += 1
end
print "\n"
puts my_array

addition = my_array.each.inject(:+)
in_words = addition.humanize
puts "The total sum of the numbers you have entered is: #{addition}"
puts "The total sum of the numbers you have entered is: #{in_words}"