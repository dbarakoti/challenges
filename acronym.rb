# Accept a sentence input form the user.
# Return a capitalized acronym of the sentence
# unidentified flying object
# UFO
# Federal Bureau of investigation
# FBI


# Puts "Enter to find any acronym"
sen = gets.chomp.upcase
puts sen.scan(/\b[a-z]/i).join.upcase

