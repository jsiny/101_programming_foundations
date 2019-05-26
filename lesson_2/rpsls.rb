VALID_CHOICES = {
  r:  'rock',
  p:  'paper',
  sc: 'scissors',
  l:  'lizard',
  sp: 'spock'
}

WINS_OVER = {
  'rock'      => %w(scissors lizard),
  'paper'     => %w(rock spock),
  'scissors'  => %w(paper lizard),
  'lizard'    => %w(paper spock),
  'spock'     => %w(rock scissors)
}

NUMBER_OF_WINS = 5

WELCOME_MESSAGE = <<-MSG
WELCOME TO ROCK PAPER SCISSORS LIZARD SPOCK!
==> You have to win #{NUMBER_OF_WINS} rounds in order to claim the title!
MSG

CHOICE_MESSAGE = <<-MSG
What do you choose?
-> 'r' for rock
-> 'p' for paper
-> 'sc' for scissors
-> 'l' for lizard
-> 'sp' for spock
MSG

POSITIVE_ANSWERS = %w(y yes oui yeah yas yep)
NEGATIVE_ANSWERS = %w(n no nope non nah nein)

def prompt(message)
  puts "==> #{message}"
end

def win?(first, second)
  WINS_OVER[first].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt "You've won!"
  elsif win?(computer, player)
    prompt 'The computer has won!'
  else
    prompt "It's a tie!"
  end
end

def retrieve_user_choice
  choice = ''
  loop do
    prompt CHOICE_MESSAGE
    choice = gets.chomp.downcase
    if VALID_CHOICES.include?(choice.to_sym)
      return choice = VALID_CHOICES[choice.to_sym]
    else
      prompt "That's not a valid choice."
    end
  end
end

def next_round(match_count)
  prompt "Type any key when you're ready for round #{match_count + 1}"
  gets
end

def play_again?
  answer = ''
  loop do
    prompt 'Do you want to play again?'
    answer = gets.chomp.downcase
    if POSITIVE_ANSWERS.include?(answer)
      return true
    elsif NEGATIVE_ANSWERS.include?(answer)
      return false
    else
      prompt "I didn't understand your answer"
    end
  end
end

def game_over?(score1, score2)
  true if score1 == NUMBER_OF_WINS || score2 == NUMBER_OF_WINS
end

def display_winner(score1, score2)
  if score1 > score2
    prompt "YOU'VE WON THE GAME!"
  else
    prompt "The Computer has won, better luck next time!"
  end
end

prompt WELCOME_MESSAGE

loop do
  match_count = 0
  player_wins_count = 0
  comp_wins_count = 0

  loop do
    match_count += 1
    prompt "ROUND #{match_count}!"

    choice = retrieve_user_choice

    computer_choice = VALID_CHOICES.values.sample

    prompt "You chose #{choice}; Computer chose #{computer_choice}."

    display_results(choice, computer_choice)

    if win?(choice, computer_choice)
      player_wins_count += 1
    elsif win?(computer_choice, choice)
      comp_wins_count += 1
    end

    prompt "SCORE: Player #{player_wins_count} - #{comp_wins_count} Computer"

    if game_over?(player_wins_count, comp_wins_count)
      display_winner(player_wins_count, comp_wins_count)
      break
    end

    next_round(match_count)
    system('clear') || system('cls')
  end

  break unless play_again?
  system('clear') || system('cls')
end

prompt 'Thank you for playing and goodbye!'
