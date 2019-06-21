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
  prompt DIVIDER
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

def busted?(hand)
  true if compute_total(hand) > 21
end

loop do
  prompt 'Welcome to our Twenty-One Game!'
  prompt "Your goal? to get as close as possible to 21... but don't go over!"

  loop do
    prompt "Shuffling cards..."
    sleep WAITING_TIME

    deck = initialize_deck

    player_hand = []
    dealer_hand = []

    player_hand = initialize_hand(deck, player_hand)
    dealer_hand = initialize_hand(deck, dealer_hand)

    display_initial_hands(player_hand, dealer_hand)

    # Player's turn
    answer = nil

    loop do
      prompt 'Do you hit or stay?'
      answer = gets.chomp
      break if answer == 'stay'
      deal_cards(deck, player_hand)
      prompt "You drew: the #{player_hand.last[0]} of #{player_hand.last[1]}"
      prompt "Your total score is now: #{compute_total(player_hand)}"
      prompt DIVIDER
      break if busted?(player_hand)
    end

    break if busted?(player_hand)

    # Computer's turn
    loop do
      break if compute_total(dealer_hand) >= 17
      deal_cards(deck, dealer_hand)
      prompt "The dealer drew: the #{dealer_hand.last[0]} of "\
      "#{dealer_hand.last[1]}"
    end

    p dealer_hand

    break if busted?(dealer_hand)

    # Compare hands
  end

  # DECLARE WINNER

  # PLAY AGAIN??
  break
end

prompt 'Thank you for playing Twenty-One!'
