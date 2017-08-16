# Ask the user for a number 1 to 25.
# Then ask for add or multiply.
# Add or multiply all the numbers form one up to the number.

my_times = 0
@my_array = []
@sum = 0
collection = 0

puts "Would you like to add or multiply"


choice = gets.chomp
if choice == "add"
	puts "Enter number 1 to 25"

	until my_times == 4
		@my_array << gets.chomp.to_i
			#my_array << number
				my_times += 1
					end

				@sum = @my_array.inject(:+)
					puts "The total is: #{@sum}"

			else
	@multi = @my_array.inject(:*)
	puts "If you multiply, your total is: #{@multi}"
end

# def my_sum
# 	@sum = @my_array.inject(:+)
# 	puts "The total is: #{@sum}"
# end
# my_sum

# def my_multiply
# 	@multi = @my_array.inject(:*)
# 	puts "If you multiply, your total is: #{@mult}"
# end
# my_multiply

# def add_multiply
# number = gets.chomp.to_i
# puts 1.upto(number).inject(:+)

# end
# add_multiply


# total_num = []

# total_num << number


