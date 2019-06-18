require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def display_board(brd)
  system 'clear'
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

def player_places_piece!(board)
  square = ''
  loop do
    prompt "Choose a square (#{empty_squares(board).join(', ')}):"
    square = gets.chomp.to_i
    break if empty_squares(board).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  board[square] = PLAYER_MARKER
end

def computer_places_piece!(board)
  square = empty_squares(board).sample
  board[square] = COMPUTER_MARKER
end

def board_full?(board)
  empty_squares(board).empty?
end

def someone_won?(board)
  false
end

board = initialize_board
display_board(board)

loop do
  player_places_piece!(board)
  computer_places_piece!(board)
  display_board(board)
  break if someone_won?(board) || board_full?(board)
end

display_board
