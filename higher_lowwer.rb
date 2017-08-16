# x Binary quessing game where cpu tells you a number is higher or lower from 1-25.
# Get input 1-25
# Have computer give me random number
# Inform cpu if number is higher or lower
# change the range accordingly, get a new guess
# repeat until answer is given.

# comp_num = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]

new_array = (1..highest_value)

rand_num = new_array.sample

puts "Enter number between 1-25"
input_num = gets.chomp.to_i

	if rand_num > input_num
		puts "your number is lower"
		highest_value = rand_num
		 puts "Don't guess higher than enter number again?"
			another_num = gets.chomp.to_i
			 if another_num  rand_num


	elsif rand_num < input_num
		puts "your number is higher"
	else
		puts "your number is equal to computer number"
	end
