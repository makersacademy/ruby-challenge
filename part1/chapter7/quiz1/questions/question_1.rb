# Write a program that draws bar graphs.  It should:
# * Ask the user for a list of numbers.  The user enters them
#   separated by commas, e.g.: `10,4,2,7,5,1`.
# * Print a horizontal bar graph of the numbers in order.
#   * Bar should be made up of `-`s.
#
# * Example output from running the program:
#   ```
#   Enter some numbers to graph
#   10,4,2,7,5,1
#   ----------
#   ----
#   --
#   -------
#   -----
#   -
#   ```
#
# * Note: You can assume the user will only enter integers separated
#   by commas with no spaces.

def number_to_dash(int)
  if int == 10
    puts "----------"
  elsif int == 9
    puts "---------"
  elsif int == 8
    puts "--------"
  elsif int == 7
    puts "-------"
  elsif int == 6
    puts "------"
  elsif int == 5
    puts "-----"
  elsif int == 4
    puts "----"
  elsif int == 3
    puts "---"
  elsif int == 2
    puts "--"
  elsif int == 1
    puts "-"
  else
    puts " "
  end
end

puts "Enter a list of numbers separated by commas: "
numbers = gets.chomp
list_of_numbers = numbers.split(",")
int_array = list_of_numbers.map { |num| num.to_i }
int_array.each { |int| puts "-" * int }