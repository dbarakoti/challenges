# Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20], and print out each value
#same as above, but only print out values greater than 5.
# Now, using the same array from #2, use the select method to extract all odd numbers into a new array.
# then turn them into dragons
# store the dragons into a vew variable and ask the user to pick a dragon. Write a program informing if the number is in that variable or not.
# give dan 20 bucks.
# give elise nothing.

my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]

my_array.each { |x| puts x }


@new_array = my_array.select { |x| puts x if x % 2 != 0 }


dragon = []


dragon << @new_array
p dragon

counter = dragon.count

puts "Guess the number of dragons"

guess = gets.chomp.to_i

if guess == counter
	puts "you guess the right number, it matches with the dragon count"
elsif guess <= counter
	puts " your guess is less then dragon count"
else
	puts "your guess is greater than number count"
end
