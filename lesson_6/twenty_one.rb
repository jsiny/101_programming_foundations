SUITS   = ['Spades ♠', 'Hearts ♥', 'Diamonds ♦', 'Clubs ♣']
VALUES  = %w(2 3 4 5 6 7 8 9 10 Jack Queen King Ace)
HEADS   = %w(Jack Queen King)

VALID_STAY_ANSWERS  = %w(stay s st sta)
VALID_HIT_ANSWERS   = %w(h hi hit hitt)
VALID_YES_ANSWERS   = %w(y yes yeah)
VALID_NO_ANSWERS    = %w(n no nope nah nay)

MAX_POINTS      = 21
MAX_DEAL_POINTS = 17
NUMBER_OF_WINS  = 5
WAITING_TIME    = 1.5
DIVIDER = '--------------------------'

def prompt(message)
  puts ">> #{message}"
end

def welcome_message
  prompt "Welcome to our Game of #{MAX_POINTS}!"
  sleep WAITING_TIME
  prompt  "Your goal? to get as close as possible to #{MAX_POINTS}..."\
          "but don't go over!"
  prompt  'Each head is worth 10 points, an ace can be worth 1 or 11 '\
          'points, and other cards are face value.'
  prompt  "The first player who reaches #{NUMBER_OF_WINS} winning rounds "\
          'become the Champion!'
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
  total = sum_card_values(values)
  total = correct_total_with_aces(values, total)
  total
end

def sum_card_values(values)
  total = 0
  values.map do |value|
    total += compute_value(value)
  end
  total
end

def correct_total_with_aces(values, total)
  values.select { |value| value == 'Ace' }.count.times do
    total -= 10 if total > MAX_POINTS
  end
  total
end

def display_last_card(hand, player)
  prompt "#{player} drew: the #{hand.last[0]} of #{hand.last[1]}"
end

def busted?(total)
  total > MAX_POINTS
end

def player_hits!(deck, hand, player_string)
  deal_cards(deck, hand)
  display_last_card(hand, player_string)
end

def player_turn(deck, player_hand)
  loop do
    prompt 'Do you hit or stay? (h/s)'
    answer = gets.chomp.downcase
    break if VALID_STAY_ANSWERS.include?(answer)

    if VALID_HIT_ANSWERS.include?(answer)
      player_hits!(deck, player_hand, 'You')
      player_total = compute_total(player_hand)
      display_points(player_total)
      break if busted?(player_total)
    else
      prompt 'Not a valid choice!'
    end
  end
end

def dealer_turn(deck, dealer_hand)
  loop do
    dealer_total = compute_total(dealer_hand)
    break if dealer_total >= MAX_DEAL_POINTS
    prompt 'Dealer hits...'
    player_hits!(deck, dealer_hand, 'The dealer')
  end
end

def determine_winner(player_total, dealer_total)
  if player_total == dealer_total
    'None'
  elsif dealer_total <= MAX_POINTS
    player_total > dealer_total ? 'Player' : 'Dealer'
  else
    'Player'
  end
end

def announce_winner(winner)
  prompt "#{winner.upcase} HAS WON!"
end

def add_to_score(winner, score)
  case winner
  when 'Player' then score['player'] += 1
  when 'Dealer' then score['dealer'] += 1
  end
end

def display_score(score)
  prompt DIVIDER
  prompt "SCORE: Player: #{score['player']} - Dealer: #{score['dealer']}"
end

def play_again?
  loop do
    prompt "Do you want to play again? (y/n)"
    answer = gets.chomp.downcase
    clear_screen
    break true if VALID_YES_ANSWERS.include?(answer)
    break false if VALID_NO_ANSWERS.include?(answer)
    prompt 'Not a valid choice!'
  end
end

def winner?(score)
  score.values.any? { |pt| pt >= NUMBER_OF_WINS }
end

def announce_champion(score)
  winner = score.key(NUMBER_OF_WINS).upcase
  prompt "THE GRAND WINNER IS THE #{winner}!"
  prompt DIVIDER
end

clear_screen
welcome_message

loop do
  score = { 'player' => 0, 'dealer' => 0 }

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
      display_initial_hands(player_hand, dealer_hand, player_total)

      player_turn(deck, player_hand)
      player_total = compute_total(player_hand)

      if busted?(player_total)
        prompt "You busted!"
        announce_winner('dealer')
        add_to_score('Dealer', score)
        break
      end

      dealer_turn(deck, dealer_hand)
      dealer_total = compute_total(dealer_hand)

      prompt "Let's reveal the cards..."
      sleep WAITING_TIME
      clear_screen

      display_final_hands(player_hand, dealer_hand, player_total, dealer_total)
      winner = determine_winner(player_total, dealer_total)
      add_to_score(winner, score)
      announce_winner(winner)
      break
    end

    display_score(score)
    announce_champion(score) if winner?(score)
    break if winner?(score)

    sleep WAITING_TIME * 3
    clear_screen
  end
  break unless play_again?
end

prompt "Thank you for playing #{MAX_POINTS}!"
