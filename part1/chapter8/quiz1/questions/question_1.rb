# Write a program that calculates the score for a word in Scrabble.
# It should:
# * Ask the user for a word e.g. `apple`.
# * `puts` the score for the word in Scrabble by totalling the points
#   for each letter in the word.
#   * Points for each letter:
#     * 0 points: blank tile
#     * 1 point: E, A, I, O, N, R, T, L, S, U
#     * 2 points: D, G
#     * 3 points: B, C, M, P
#     * 4 points: F, H, V, W, Y
#     * 5 points: K
#     * 8 points: J, X
#     * 10 points: Q, Z

# * Note: You can assume that the user will enter a word that only
#   contains letters and blanks.  You can assume the word will be in
#   uppercase.
score = 0
points1 = "EAIONRTLSU"
points2 = "DG"
points3 = "BCMP"
points4 = "FHVWY"
points5 = "K"
points6 = "JX"
points7 = "QZ"

puts "What is your word?"
word = gets.chomp.upcase

score += 1 * word.count(points1)
score += 2 * word.count(points2)
score += 3 * word.count(points3)
score += 4 * word.count(points4)
score += 5 * word.count(points5)
score += 8 * word.count(points6)
score += 10 * word.count(points7)

puts score
