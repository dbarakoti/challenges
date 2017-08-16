# Make a Store!!
# you must offer at least 3 items or services.
# with several subtypes/variations each.
# Ask the user what they would like to buy after displaying the menu.
# They must choose at least 2 items.
# Ask them if they would like anything else.
# Total the amount it will cost and add tax then display it to the user with a goodbye message.

puts "Welcome to GD's place- A flavor you will never forget!!!"

main_price = 10


	ham_menu = {
			"Fries" => 2,
			"Drink" => 1
		}

		st_menu = { 
			"Mash Potatoes" => 3,
			"Salads" => 4
		}

		salmon_menu = {
			"Rosted Potatoes" => 3,
			"Risotto" => 3
		}
	


puts "What main dish would you like, each dish costs $10:"
puts "Steak, Salmon, Hamburger"

choice = gets.chomp.downcase


puts "what side dish would you like?"

puts "Side dish available:"

	if choice == "steak"
		st_menu.each do |side, price|
				puts "#{side} $#{price}"
				end
				side_choice = gets.chomp.downcase
					if side_choice == "mash potatoes" 
				total = main_price + st_menu.values[0]
				 puts "Your total: #{total}"
				end
				
			
	elsif choice == "hamburger"
		salmon_menu.each do |side, price|
				puts "side dish: #{side} $#{price}"
			end
	elsif choice == "salmon"
			ham_menu.each do |side, price|
				puts "side dish: #{side} $#{price}"
			end
	else
		puts "I'm sorry. I didn't understand"

	end





