require 'pry'
require 'faker'
# There is a village with 10 people.
#Every night one random person gets turned into a random animal then turns back the next morning.
#if the person is a lamb th, village is safe for the night.
#	if the person is a tiger, it eats a random person.
#		If the person is a cow, the people accidentally eat him.

#If the person is a Dragon, 2 people get eaten.

#If the person is a Manticore another person magically appears!.

#Write a program that will run the senario until all the villagers but one are gone and see how many nights they survive.

@people = ["Dan", "Dipesh", "Ian", "Gordon", "Bradon", "Dave", "Jarred", "Ben", "Tyson", "Dallion", "Muhammad"]
@animal = ["Lamb", "Tiger", "Cow", "Dragon", "Manticore"]

@nights_survived = 0
@dead = []
@random_name = Faker::LordOfTheRings.character

def village
	until @people.size == 1 do
		@nights_survived += 1
		@people.shuffle!
		shifter = @people[0]
		@animal.shuffle!
		creature = @animal[0]
		case creature
			when "Lamb"
			when "Tiger"
				@dead << @people.pop
			when "Cow"
				@dead << @people.shift
			when "Dragon"
				@dead << @people.pop
				unless @people == 1
					@dead << @people.pop
				end
			when "Manticore"
				@people << @random_name
			else 
				puts "Toast"
		end
	end
end
village
puts "Only one remains..."
puts "They survived for #{@nights_survived} nights."
puts "The survivor is..."
sleep(2)
puts @people
			
