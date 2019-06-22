SUITS = ['H', 'D', 'S', 'C']
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
MAX_VALUE = 21
MAX_DEAL_VALUE = 17
NUMBER_OF_WINS = 5

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def total(cards)
  # cards = [['H', '3'], ['S', 'Q'], ... ]
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    sum += if value == "A"
             11
           elsif value.to_i == 0 # J, Q, K
             10
           else
             value.to_i
           end
  end

  # correct for Aces
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > MAX_VALUE
  end

  sum
end

def busted?(total)
  total > MAX_VALUE
end

# :tie, :dealer, :player, :dealer_busted, :player_busted
def detect_result(dealer_total, player_total)
  if player_total > MAX_VALUE
    :player_busted
  elsif dealer_total > MAX_VALUE
    :dealer_busted
  elsif dealer_total < player_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

def display_result(dealer_total, player_total)
  result = detect_result(dealer_total, player_total)

  case result
  when :player_busted then prompt "You busted! Dealer wins!"
  when :dealer_busted then prompt "Dealer busted! You win!"
  when :player        then prompt "You win!"
  when :dealer        then prompt "Dealer wins!"
  when :tie           then prompt "It's a tie!"
  end
end

def add_to_score(dealer_total, player_total, score)
  result = detect_result(dealer_total, player_total)

  case result
  when :player_busted then score[:dealer] += 1
  when :dealer_busted then score[:player] += 1
  when :player        then score[:player] += 1
  when :dealer        then score[:dealer] += 1
  end
end

def display_score(score)
  prompt "SCORE: Player: #{score[:player]} - Dealer: #{score[:dealer]}"
end

def winner?(score)
  score.values.any? { |pt| pt >= NUMBER_OF_WINS }
end

def announce_winner(score)
  winner = score.key(NUMBER_OF_WINS).upcase
  display_score(score)
  prompt "THE GRAND WINNER IS THE #{winner}!"
end

def play_again?
  puts "-------------"
  prompt "Do you want to play again? (y or n)"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

def goodbye
  prompt 'Thank you for playing Twenty-One! Good bye!'
end

score = { player: 0, dealer: 0 }

loop do
  break if winner?(score)

  prompt "Welcome to Twenty-One!"
  display_score(score)

  # initialize vars
  deck = initialize_deck
  player_cards = []
  dealer_cards = []

  # initial deal
  2.times do
    player_cards << deck.pop
    dealer_cards << deck.pop
  end

  player_total = total(player_cards)
  dealer_total = total(dealer_cards)

  prompt "Dealer has #{dealer_cards[0]} and ?"
  prompt "You have: #{player_cards[0]} and #{player_cards[1]}, for a total "\
  "of #{player_total}."

  # player turn
  loop do
    player_turn = nil
    loop do
      prompt "Would you like to (h)it or (s)tay?"
      player_turn = gets.chomp.downcase
      break if ['h', 's'].include?(player_turn)

      prompt "Sorry, must enter 'h' or 's'."
    end

    if player_turn == 'h'
      player_cards << deck.pop
      player_total = total(player_cards)
      prompt "You chose to hit!"
      prompt "Your cards are now: #{player_cards}"
      prompt "Your total is now: #{player_total}"
    end

    break if player_turn == 's' || busted?(player_total)
  end

  if busted?(player_total)
    display_result(dealer_total, player_total)
    add_to_score(dealer_total, player_total, score)

    if winner?(score)
      announce_winner(score)
      break
    else
      play_again? ? next : break
    end
  else
    prompt "You stayed at #{player_total}"
  end

  # dealer turn
  prompt "Dealer turn..."

  loop do
    break if dealer_total >= MAX_DEAL_VALUE

    prompt "Dealer hits!"
    dealer_cards << deck.pop
    dealer_total = total(dealer_cards)
    prompt "Dealer's cards are now: #{dealer_cards}"
  end

  if busted?(dealer_total)
    prompt "Dealer total is now: #{dealer_total}"
    display_result(dealer_total, player_total)
    add_to_score(dealer_total, player_total, score)

    if winner?(score)
      announce_winner(score)
      break
    else
      play_again? ? next : break
    end
  else
    prompt "Dealer stays at #{dealer_total}"
  end

  # both player and dealer stays - compare cards!
  puts "=============="
  prompt "Dealer has #{dealer_cards}, for a total of: #{dealer_total}"
  prompt "Player has #{player_cards}, for a total of: #{player_total}"
  puts "=============="

  display_result(dealer_total, player_total)
  add_to_score(dealer_total, player_total, score)

  if winner?(score)
    announce_winner(score)
  else
    break unless play_again?
  end
end

goodbye
