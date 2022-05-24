require_relative 'card.rb'

class CardDeck 
  attr_accessor :cards

  def initialize
    build_deck
    @cards = []
  end

  

  private 

  def build_deck
    Card::SUITS.each do |suit|

    end
  end
end

# The deck should be usable for any standard card game that uses a single deck of cards, including the following capabilities:

# deal a card from the top of the deck
# return a card to the bottom of the deck
# compare cards by rank
