# OOP in Ruby
# 1. have detailed requirements or specifications in written form
# 2. extract major nouns -> classes
# 3. extract major verbs - > instnace methods
# 4. group instance methods into classes
# 5. class variables and methods
# 6. compare with procedural

class Card
  attr_accessor :suit, :value
  def initialize(s, v)
    @suit = s
    @value = v
  end

  def to_s
    "This is the card: #{suit} #{value}"
  end
end

class Deck
  attr_accessor :cards

  def initialize  #(num_decks=1)
    @cards = []
    ['H', 'D', 'S', 'C'].each do |suit|
      ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A'].each do |face_value|
        @cards << Card.new(suit, face_value)
      end
    end
    # @cards = @cards * num_decks
    scramble!
  end

  def scramble!
    cards.shuffle!
  end

  def deal
    cards.pop
  end

end

class Player
  
end

class Dealer
  
end

class BlackJack
  attr_accessor :player, :dealer, :deck

  def initialize
    @player = Player.new('Bob')
    @dealer = Dealer.new
    @deck = Deck.new
  end

  def run
    deal_cards
    show_flow
    player_turn
    dealer_turn
    who_won?
  end
end

Blackjack.new.run