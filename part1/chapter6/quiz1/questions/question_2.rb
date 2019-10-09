# Write a program that lets two players play Rock, Paper, Scissors. The program should:
# * Ask player 1 for their move.  They can input `rock`, `paper` or
#   `scissors`.
# * Ask player 2 for their move.  They can input `rock`, `paper` or
#   `scissors`.
# * Calculates who has won.  `rock` beats `scissors`, `paper` beats
#   `rock`, `scissors` beat `paper`.
# * If player 1 has won, `puts`es `Player 1 wins`.
# * If player 2 has won, `puts`es `Player 2 wins`.
# * If the game is a draw, `puts`es `It's a draw`.
#
# * Note: You can assume that players will input one of the three
#   possible moves described above.
#
# * Note: When you run the automated tests, the tests will simulate
#   the user input.  You shouldn't need to enter any input manually.
#   If the tests hang when you run them, it probably means your code
#   doesn't work correctly, yet.
#
# * Note: You can assume the players will only ever input `rock`,
#   `paper` or `scissors`.

puts "Player One, enter your move"
player_one_move = gets.downcase.chomp
puts "Player Two, enter your move"
player_two_move = gets.downcase.chomp
r = "rock"
s = "scissors"
p = "paper"
while true do
  if player_one_move == player_two_move
    puts "It's a draw"
    break
  elsif (player_one_move == r && player_two_move == s) ||
        (player_one_move == s && player_two_move == p) ||
        (player_one_move == p && player_two_move == r)
    puts "Player 1 wins"
    break
  elsif (player_two_move == r && player_one_move == s) ||
        (player_two_move == s && player_one_move == p) ||
        (player_two_move == p && player_one_move == r)
    puts "Player 2 wins"
    break
  end
end