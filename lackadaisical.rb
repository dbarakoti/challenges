# bob is a lacadaisical teenager. In conversation, his responsies are very limited
# Bob answers 'sure'. If you ask him a question
# He answers "whoa, chill out!" if you yell at him.
# He says 'Fine. Be that way!' if you address him without actually saying anyting.
# He answers 'Whatever.' to anything else.

puts "My conversation with Bob"
	my_talk = gets.chomp

	if my_talk.include? "?"
		puts "Sure"
	elsif my_talk.include? "!"
		puts "Who, chill out!"
		elsif my_talk.include? ""
		puts "Fine. Be that way!"
	else
		puts "whatever"
	end



# question = []

# yell =[]

# anything = []

# puts "My question to Bob:"
# my_que = gets.chomp.capitalize
# question << my_que

# puts "When i yell at him"
# my_yell = gets.chomp.capitalize
# yell << my_yell

# puts "When i don't say anything"
# my_any = gets.chomp.capitalize

# if question
# 	puts "Sure"
# elsif yell
# 	puts "Whoa, chil out!"
# elsif anything.empty?
# 	puts "Fine. Be that way!"

# else
# 	puts "Whatever"
# end

		

