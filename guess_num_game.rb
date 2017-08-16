# Have the computer pick a number between 1 and 50.
# you will guess numbers untill you guess it correctly.
# after each guess the computer will tell you higher or lower.

def num_game

	puts "Guess any number"
	my_num = gets.chomp.to_i

	1.upto(50) do |num|
		puts "Computer picked: #{num}"
		puts "You picked: #{my_num}"
		if num == my_num
			puts "yaa you guess it right"
		elsif num < my_num
			puts "your num is higher"
		else
			puts "your num is lower"		
	end 
end
end
	num_game