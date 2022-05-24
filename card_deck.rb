require_relative 'card'
require 'pry'
class CardDeck
  attr_accessor :cards

  def initialize
    @cards = []
    build_deck
  end

  def deal
    cards.delete_at(0)
  end

  def move_card_to_bottom(card)
    cards.push(card)
  end

  # This calls Array.shuffle! (built in)
  def shuffle
    3.times { cards.shuffle! }
  end

  # couldn't think of a better name right now
  def self.greater_value_card(first_card, second_card)
    first_card.value > second_card.value ? first_card : second_card
  end

  private

  def build_deck
    Card::SUITS.each do |suit|
      Card::CARD_RANKS.each do |card, _|
        cards.push(Card.new(suit, card))
      end
    end
  end
end

# The deck should be usable for any standard card game that uses a single deck of cards, including the following capabilities:

# deal a card from the top of the deck
# return a card to the bottom of the deck
# compare cards by rank
