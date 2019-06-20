INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES =   [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # colons
                  [[1, 5, 9], [3, 5, 7]]              # diagonals
NUMBER_OF_WINS = 5
MIN_SQUARE = 1
MAX_SQUARE = 9
WAITING_TIME = 2
FIRST_MOVE = 'choose'
VALID_FIRST_MOVES = %w(player computer choose).freeze
VALID_ANSWERS = %w(y n).freeze

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're #{PLAYER_MARKER}, Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def prompt(msg)
  puts ">> #{msg}"
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def joinor(array, separator=', ', word='or')
  case array.size
  when 0 then ''
  when 1 then array.first
  when 2 then array.join(" #{word} ")
  else array[0...-1].join(separator) + "#{separator + word} #{array[-1]}"
  end
end

def valid_square?(num)
  num = num.to_f
  num >= MIN_SQUARE && num <= MAX_SQUARE && num == num.to_i
end

def choose_first_player
  choice = ''
  loop do
    prompt "Do you want to play first? ('y' or 'n')"
    choice = gets.chomp.downcase
    break if VALID_ANSWERS.include?(choice)
    prompt "I didn't understand, please input a valid answer ('y' or 'n')"
  end
  choice == 'y' ? 'player' : 'computer'
end

def set_first_move
  return choose_first_player  if FIRST_MOVE == 'choose'
  return FIRST_MOVE           if VALID_FIRST_MOVES.include?(FIRST_MOVE)
end

def place_piece!(board, current_player)
  if current_player == 'player'
    player_places_piece!(board)
  else
    computer_places_piece!(board)
  end
end

def alternate_player(current_player)
  current_player == 'player' ? 'computer' : 'player'
end

def player_places_piece!(board)
  square = ''

  loop do
    prompt "Choose a square (#{joinor(empty_squares(board))}):"
    square = gets.chomp
    break if valid_square?(square)
    prompt "Sorry, that's not a valid choice."
  end

  board[square.to_i] = PLAYER_MARKER
end

def computer_places_piece!(board)
  square = nil

  square = offensive_move(square, board)
  square = defensive_move(square, board)  if square.nil?
  square = choose_5(board)                if square.nil?
  square = empty_squares(board).sample    if square.nil?

  board[square] = COMPUTER_MARKER
end

def offensive_move(square, board)
  WINNING_LINES.each do |line|
    square = find_interesting_square(board, line, COMPUTER_MARKER)
    break if square
  end
  square
end

def defensive_move(square, board)
  WINNING_LINES.each do |line|
    square = find_interesting_square(board, line, PLAYER_MARKER)
    break if square
  end
  square
end

def choose_5(board)
  5 if empty_squares(board).include?(5)
end

def empty_squares(board)
  board.keys.select { |num| board[num] == INITIAL_MARKER }
end

def find_interesting_square(board, line, marker)
  if board.values_at(*line).count(marker) == 2
    board.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  end
end

def board_full?(board)
  empty_squares(board).empty?
end

def someone_won?(board)
  !!detect_winner(board)
end

def detect_winner(board)
  WINNING_LINES.each do |line|
    return 'Player'   if board.values_at(*line).count(PLAYER_MARKER)    == 3
    return 'Computer' if board.values_at(*line).count(COMPUTER_MARKER)  == 3
  end
  nil
end

def display_score(player_score, computer_score)
  prompt "SCORE: Player #{player_score} - Computer #{computer_score}"
end

def match_ended?(score1, score2)
  score1 == NUMBER_OF_WINS || score2 == NUMBER_OF_WINS
end

def announce_winner(player_score)
  if player_score == NUMBER_OF_WINS
    prompt 'CONGRATS: YOU ARE THE GRAND WINNER!'
  else
    prompt 'THE COMPUTER IS THE GRAND WINNER!'
    prompt 'First Tic Tac Toe, then the WORLD!'
  end
end

loop do
  prompt "Welcome to Tic Tac Toe!"
  prompt "You need to win #{NUMBER_OF_WINS} rounds to become the grand winner!"
  sleep WAITING_TIME

  player_score = 0
  computer_score = 0

  loop do
    board = initialize_board
    current_player = set_first_move

    loop do
      display_board(board)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end

    display_board(board)

    if someone_won?(board)
      prompt "#{detect_winner(board).upcase} WON!"
      detect_winner(board) == 'Player' ? player_score += 1 : computer_score += 1
      display_score(player_score, computer_score)
    else
      prompt "It's a tie!"
    end

    break if match_ended?(player_score, computer_score)
    prompt "New round starts in #{WAITING_TIME} seconds!"
    sleep WAITING_TIME
  end

  announce_winner(player_score)
  sleep WAITING_TIME
  prompt "Do you want to play again? (y or n)"
  answer = gets.chomp.downcase
  break unless answer.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe!"
