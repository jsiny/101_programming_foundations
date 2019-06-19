INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES =   [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # colons
                  [[1, 5, 9], [3, 5, 7]]              # diagonals
NUMBER_OF_WINS = 5

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

def empty_squares(board)
  board.keys.select { |num| board[num] == INITIAL_MARKER }
end

def joinor(array, separator=', ', word='or')
  case array.size
  when 0 then ''
  when 1 then array.first
  when 2 then array.join(" #{word} ")
  else array[0...-1].join(separator) + "#{separator + word} #{array[-1]}"
  end
end

def player_places_piece!(board)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(board))}):"
    square = gets.chomp.to_i
    break if empty_squares(board).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  board[square] = PLAYER_MARKER
end

def computer_places_piece!(board)
  square = nil

  WINNING_LINES.each do |line|
    square = find_interesting_square(board, line, PLAYER_MARKER)
    square = find_interesting_square(board, line, COMPUTER_MARKER)
    break if square
  end

  if !square
    square = empty_squares(board).sample
  end

  board[square] = COMPUTER_MARKER
end

def find_interesting_square(board, line, player)
  if board.values_at(*line).count(player) == 2
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
    return 'Player' if board.values_at(*line).count(PLAYER_MARKER) == 3
    return 'Computer' if board.values_at(*line).count(COMPUTER_MARKER) == 3
  end
  nil
end

loop do
  player_score = 0
  computer_score = 0

  loop do
    board = initialize_board

    loop do
      display_board(board)
      player_places_piece!(board)
      display_board(board)
      break if someone_won?(board) || board_full?(board)

      computer_places_piece!(board)
      display_board(board)
      break if someone_won?(board) || board_full?(board)
    end

    if someone_won?(board)
      prompt "#{detect_winner(board).upcase} WON!"
      detect_winner(board) == 'Player' ? player_score += 1 : computer_score += 1
      prompt  "#{player_score} points for the Player, "\
              "#{computer_score} for the Computer"
    else
      prompt "It's a tie!"
    end

    break if player_score == NUMBER_OF_WINS || computer_score == NUMBER_OF_WINS
    prompt "Press any key when you're ready for the next round"
    next if gets.chomp
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
prompt "Thanks for playing Tic Tac Toe! Goodbye"
