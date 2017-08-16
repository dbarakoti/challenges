# Build a deck of cards.
# normal 52 playing card deck
# you need to be able to draw cards and dicard them and have them not be in the deck anymore.

@stack_of_cards = []
@ranks = %w(A 2 3 4 5 6 7 8 9 10 J Q K)
@suits = %w(Spades Hearts Diamonds Clubs)

def draw_card
@suit = @suits.sample 
@rank = @ranks.sample 
@add_card =  "#{@rank} of #{@suit}"

end

def check
    draw_card
    if @stack_of_cards.include?(@add_card) == false
        @stack_of_cards << @add_card
        puts "you drew the #{@add_card}"
        check
    else
    end
end

until @stack_of_cards.size == 52
     check
 end
 p @stack_of_cards
 puts "You've drawn all the cards!"