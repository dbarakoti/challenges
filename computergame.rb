def number

	1.upto(25) do |num|
		puts "Guess any number between 1-25:"
		your_num = gets.chomp.to_i
		puts "You have entered: #{your_num}"
			if num == your_num
				puts "your number matches with a cumputer number"

			elsif num <= your_num
				puts "Your number is higher than computer number"

			else
				puts "Your number is lower than computer number"

			end
		end
	end
	number

