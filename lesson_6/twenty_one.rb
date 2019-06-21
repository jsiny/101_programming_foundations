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
