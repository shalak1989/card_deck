require_relative '../card_deck'

RSpec.describe CardDeck do
  let(:deck) { CardDeck.new }
  context 'after intilization' do
    it 'contains 52 cards' do
      expect(deck.cards.count).to eq(52)
    end
  end

  describe '.shuffle' do
    it 'calls Array.shuffle! 3 times' do
      deck.cards.should_receive(:shuffle!).exactly(3).times
      deck.shuffle
    end
  end

  describe '.deal' do
    it 'removes 1 card and returns the card' do
      expect { deck.deal }.to change { deck.cards.count }.from(52).to(51)
    end
  end

  describe '.move_card_to_bottom' do
    it 'moves the passed in card to the end/bottom of the deck' do
      card = Card.new('spades', '5')
      deck.move_card_to_bottom(card)
      expect(deck.cards.last).to eq(card)
    end
  end

  describe '#greater_value_card' do
    it 'returns the card with the higher card_rank value' do
      first_card = Card.new('spades', '5')
      second_card = Card.new('hearts', 'jack')
      result = CardDeck.greater_value_card(first_card, second_card)
      expect(result).to eq(second_card)
    end
  end
end

# def move_card_to_bottom(card)
#   cards.push(card)
# end

# # couldn't think of a better name right now
# def greater_value_card(first_card, second_card)
#   first_card.value > second_card ? first_card : second_card
# end
