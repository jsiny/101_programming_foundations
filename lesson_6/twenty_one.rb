# 52 card desks: 4 suits (hearts, diamonds, clubs and spades) and 13 values
# (2..10, jack, queen, king, ace)

# goal: get as close as possible to 21, without going over (busted)

# intial setup:
# - dealer vs player
# - 2 cards per player
# - The player can see both cards, and 1 out of the dealer's.

# Card values:
# - numbers 2 to 10: face value
# - jack, queen and king: 10
# - ace: can be either 1 or 11
#     -  The ace's value is determined each time a new card is drawn from the
#       deck
#     - If the player has several aces, their values can be different (1 or 11)
#       => the first ace can be 1 or 11. Future aces are all 1s.

# Player turn:
# - hit: ask for another card. The player can continue to hit as many times
# as they want until it either stays or busts.
# - stay

# Dealer turn:
# - when the player stays, it's the dealer's turn
# - hit until the total is at least 17
# - if the dealer busts, the player wins

# Comparing cards:
# - When both the player and dealer stay, it's time to compare the total value
# of the cards and see who has the highest value

# 1. Initialize deck
# 2. Deal cards to player and dealer
# 3. Player turn: hit or stay
#   - repeat until bust or "stay"
# 4. If player bust, dealer wins.
# 5. Dealer turn: hit or stay
#   - repeat until total >= 17
# 6. If dealer bust, player wins.
# 7. Compare cards and declare winner.

# Data structure
# Deck:
# [['Ace', 'Spades'], ['Jack', 'Hearts'], ['3', 'Club'], ['10', 'Diamonds']]
# shuffled and then poped

# Main des joueurs:
# { ['Ace', 'Spades'] => 11, ['Jack', 'Hearts'] => 10 }

SUITS = %w(Spades Hearts Diamonds Clubs).freeze
VALUES = %w(2 3 4 5 6 7 8 9 10 Jack Queen King Ace).freeze
ROYALTY = %w(Jack Queen King).freeze
WAITING_TIME = 0.5
DIVIDER = '--------------------------'

def prompt(message)
  puts ">> #{message}"
end

def initialize_deck
  deck = []
  SUITS.each do |suit|
    VALUES.each do |value|
      deck << [value, suit]
    end
  end
  deck.shuffle
end

def deal_cards(deck, hand, number_of_cards=1)
  number_of_cards.times do
    hand << deck.pop
  end
  hand
end

def initialize_hand(deck, hand) deal_cards(deck, hand, 2); end

def display_initial_hands(player_hand, dealer_hand)
  prompt DIVIDER
  prompt "You have:"

  player_hand.each do |card|
    prompt "- The #{card[0]} of #{card[1]}" # : #{value} points"
  end

  prompt DIVIDER
  prompt "Your total points: #{compute_total(player_hand)}"
  prompt DIVIDER

  visible_card = dealer_hand.first
  prompt "The dealer has the #{visible_card[0]} of #{visible_card[1]}"
end

def compute_value(card)
  return 10 if ROYALTY.include?(card)
  return 11 if card == 'Ace' # not exactly true
  card.to_i
end

def compute_total(hand)
  values = hand.map(&:first)
  total = 0

  values.map do |value|
    total += compute_value(value)
  end

  values.select { |value| value == 'Ace' }.count.times do
    total -= 10 if total > 21
  end

  total
end

prompt 'Welcome to our Twenty-One Game!'
prompt "Your goal? to get as close as possible to 21... but don't go over!"
prompt "Shuffling cards..."
sleep WAITING_TIME

deck = initialize_deck

player_hand = []
dealer_hand = []

# player_points = 0
# dealer_points = 0

player_hand = initialize_hand(deck, player_hand)
dealer_hand = initialize_hand(deck, dealer_hand)

display_initial_hands(player_hand, dealer_hand)
p player_hand
p compute_total(player_hand)
