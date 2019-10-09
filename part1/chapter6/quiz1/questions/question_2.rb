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

paper = "paper"
rock = "rock"
scissors = "scissors"

while true do
  puts "Player 1 choose between rock, paper and scissors:"
  player_1 = gets.chomp.downcase

  puts "Player 2 choose between rock, paper and scissors:"
  player_2 = gets.chomp.downcase

  if player_1 == rock && player_2 == scissors
    puts "Player 1 wins"
  elsif player_1 == scissors && player_2 == paper
    puts "Player 1 wins"
  elsif player_1 == paper && player_2 == rock
    puts "Player 1 wins"
  elsif player_2 == rock && player_1 == scissors
    puts "Player 2 wins"
  elsif player_2 == scissors && player_1 == paper
    puts "Player 2 wins"
  elsif player_2 == paper && player_1 == rock
    puts "Player 2 wins"
  elsif player_1 == rock && player_2 == rock
    puts "It's a draw"
  elsif player_1 == paper && player_2 == paper
    puts "It's a draw"
  elsif player_1 == scissors && player_2 == scissors
    puts "It's a draw"
  end
  break
end