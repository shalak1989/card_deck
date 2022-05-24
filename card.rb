class Card

  SUITS = [
    'clubs',
    'spades',
    'hearts',
    'diamonds'
  ]

  # Each suit contains 13 cards, in order of rank: 2, 3, 4, 5, 6, 7, 8, 9, 10, Jack, Queen, King, Ace

  CARD_RANKS = {
    '2' => 2,
    '3' => 3,
    '4' => 4,
    '5' => 5,
    '6' => 6,
    '7' => 7,
    '8' => 8,
    '9' => 9,
    '10' => 10,
    'jack' => 11,
    'queen' => 12,
    'king' => 13,
    'ace' => 14
  }

  attr_accessor :suit, :card_rank

  # Could separate into individual checks if more info is needed
  def initialize(suit, card_rank)
    throw 'invalid card creation inputs' unless valid_inputs(suit, card_rank)

    @suit = suit
    @card_rank = card_rank
  end

  def card_value
    CARD_RANKS[card_rank]
  end

  private

  def valid_inputs(suit, card_rank)
    return true if SUITS.include?(suit) && CARD_RANKS[card_rank]
  end
end
