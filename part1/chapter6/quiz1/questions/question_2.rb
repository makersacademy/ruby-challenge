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

puts "This is a two player game \"Rock, Paper, Scissors\", you can only input either "rock", "paper" or "scissors" "
puts "Player 1 do your move: "


p1_input = gets.chomp
#total_p1_input << p1_input

puts "Player 2 do your move: "
p2_input = gets.chomp

  if (p1_input == "rock" && p2_input == "rock" )|| (p1_input == "paper" && p2_input == "paper") || (p1_input == "scissors" && p2_input == "scissors")
		puts "It is a draw"
	end
	if (p1_input == "rock" && p2_input == "scissors" )|| (p1_input == "paper" && p2_input == "rock") || (p1_input == "scissors" && p2_input == "paper")
		puts "Player 1 wins"
	end
	if (p1_input == "rock" && p2_input == "paper" )|| (p1_input == "paper" && p2_input == "scissors") || (p1_input == "scissors" && p2_input == "rock")
		puts "Player 2 wins"
	end
