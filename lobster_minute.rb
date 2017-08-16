# The year is 1776 and the lobster backs and Minute maids meet in a field to do battle.
# the groups take turns shooting at each other.
# Each person in each group has a 50% change of being hit and dying.
# How many rounds does it take to determine a winning group.
# 10 v 10

puts "Welcome to the battle field"
sleep(1)
puts " Lobster backs vs Minute maids"

	@lobster_shots = 10
  @maids_shots = 10
  @rounds_fired = 0

  def battle_ground
   loss = rand(1..2)
   if loss == 1
       puts "maids lose"
       @maids_shots -= 1
   else
       puts "Lobster lose"
       @lobster_shots -= 1
   end    
 end

 until @lobster_shots == 0 || @maids_shots == 0
      battle_ground
      @rounds_fired += 1
  end

 puts "#{@lobster_shots} vs #{@maids_shots} after #{@rounds_fired}"

