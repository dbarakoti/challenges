# You guys now take bets for a horse race.
# Take bids form people and then give the pay out to the winner.
# Create four horses.
# accept bets to which will win.
# randomly choose a horse to win and pay out to the winner.

puts "Welcome to the horse race"
sleep (1)
puts "Available Horses to bid:"
sleep (1)
puts " 1. Challenger, 2. Bravo, 3. Thriller, 4. Rocky"

bid_times = 0

horses = ["challenger", "bravo", "thriller", "rocky"]

horse_select = horses.sample

winner = []

win_option = []

@one_option = []
two_option = []
bidding_amount = []

 bidder = []

until bid_times == 2 
	

puts "Select your horse"
  horse = gets.chomp.capitalize
   puts "The horse you have selected is: #{horse}"
   @one_option << horse


puts "Enter your name in order to bid"
 bidder = gets.chomp.capitalize
  puts "Bidder Name: #{bidder}"
  @one_option << bidder

puts "Enter your bid amount"
	bid_amt = gets.chomp.to_i
	puts "Your bid amount: #{bid_amt}"
	@one_option << bid_amt
 # bidding_amount << gets.chomp.to_i
 #  puts "The amount you bid is: #{bidding_amount}"
 #    bidding_amount.sort!
 #     #p bidding_amount
 #      win_amt = bidding_amount.pop
 #      p win_amt



# #bidding_amount(1){|a,b| a.length <=> b.length}
bid_times += 1
p @one_option
end

if @one_option[2] == @one_option[5]
	puts "the bid is tie"
elsif @one_option[2] > @one_option[5]
	puts "the winner is: #{@one_option[1]}, #{@one_option[0]}" 
else
	puts "the winner is: #{@one_option[4]}, #{@one_option[3]}" 

end
		







