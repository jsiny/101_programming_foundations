SUITS = ['Spades ♠', 'Hearts ♥', 'Diamonds ♦', 'Clubs ♣']
VALUES = %w(2 3 4 5 6 7 8 9 10 Jack Queen King Ace)
HEADS = %w(Jack Queen King)
VALID_STAY_ANSWERS = %w(stay s st sta)
VALID_YES_ANSWERS = %w(y yes yeah)
WAITING_TIME = 1.5
DIVIDER = '--------------------------'

def prompt(message)
  puts ">> #{message}"
end

def welcome_message
  prompt 'Welcome to our Twenty-One Game!'
  sleep WAITING_TIME
  prompt "Your goal? to get as close as possible to 21... but don't go over!"
  prompt  'Each head is worth 10 points, an ace can be worth 1 or 11 '\
          'points, and other cards are face value.'
  sleep WAITING_TIME
  prompt "Ready? LET'S PLAY!"
  prompt DIVIDER
end

def clear_screen
  system('clear') || system('cls')
end

def initialize_deck
  VALUES.product(SUITS).shuffle
end

def deal_cards(deck, hand, number_of_cards=1)
  number_of_cards.times do
    hand << deck.pop
  end
  hand
end

def initialize_hand(deck, hand) deal_cards(deck, hand, 2); end

def display_initial_hands(player_hand, dealer_hand, player_total)
  prompt DIVIDER
  prompt 'You have:'

  display_hand(player_hand)
  display_points(player_total)

  visible_card = dealer_hand.first
  prompt "The dealer has the #{visible_card[0]} of #{visible_card[1]}"
  prompt DIVIDER
end

def display_hand(hand)
  hand.each do |card|
    prompt "- The #{card[0]} of #{card[1]}"
  end
end

def display_points(total)
  prompt DIVIDER
  prompt "Total points: #{total}"
  prompt DIVIDER
end

def display_final_hands(player_hand, dealer_hand, player_total, dealer_total)
  prompt DIVIDER
  prompt 'You have:'

  display_hand(player_hand)
  display_points(player_total)

  prompt 'The dealer has:'
  display_hand(dealer_hand)
  display_points(dealer_total)
end

def compute_value(card)
  return 10 if HEADS.include?(card)
  return 11 if card == 'Ace'

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

def display_last_card(hand, player)
  prompt "#{player} drew: the #{hand.last[0]} of #{hand.last[1]}"
end

def busted?(total)
  total > 21
end

def compare_hands(player_total, dealer_total)
  if player_total == dealer_total
    'None'
  elsif dealer_total <= 21
    player_total > dealer_total ? 'Player' : 'Dealer'
  else
    'Player'
  end
end

def announce_winner(winner)
  prompt "#{winner.upcase} HAS WON!"
end

def play_again?
  prompt "Do you want to play again? (y/n)"
  answer = gets.chomp.downcase
  clear_screen
  VALID_YES_ANSWERS.include?(answer)
end

clear_screen
welcome_message

loop do
  loop do
    prompt "Shuffling cards..."
    sleep WAITING_TIME

    deck = initialize_deck

    player_hand = []
    dealer_hand = []

    player_hand = initialize_hand(deck, player_hand)
    dealer_hand = initialize_hand(deck, dealer_hand)
    player_total = compute_total(player_hand)
    dealer_total = compute_total(dealer_hand)
    display_initial_hands(player_hand, dealer_hand, player_total)

    # Player's turn
    loop do
      prompt 'Do you hit or stay?'
      answer = gets.chomp
      break if VALID_STAY_ANSWERS.include?(answer)

      deal_cards(deck, player_hand)
      display_last_card(player_hand, 'You')
      player_total = compute_total(player_hand)
      display_points(player_total)
      break if busted?(player_total)
    end

    if busted?(player_total)
      prompt "You busted!"
      announce_winner('dealer')
      break
    end

    # Dealer's turn
    loop do
      dealer_total = compute_total(dealer_hand)
      break if dealer_total >= 17

      prompt 'Dealer hits...'
      deal_cards(deck, dealer_hand)
      display_last_card(dealer_hand, 'The dealer')
    end

    prompt "Let's reveal the cards..."
    sleep WAITING_TIME
    clear_screen

    display_final_hands(player_hand, dealer_hand, player_total, dealer_total)
    winner = compare_hands(player_total, dealer_total)
    announce_winner(winner)
    break
  end

  sleep WAITING_TIME
  break unless play_again?
end

prompt 'Thank you for playing Twenty-One!'
