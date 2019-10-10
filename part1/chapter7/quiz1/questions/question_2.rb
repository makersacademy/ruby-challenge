# Write a program that puts people into groups.  It should:
# * Ask the user to enter the number of groups they want to create.
# * Ask for people's names, one at a time, until the user enters `stop`.
# * Grouping strategy
#   * As an example, imagine there are three groups.
#   * First person goes in the first group.
#   * Second person goes in the second group.
#   * Third person goes in the third group.
#   * Fourth person goes in the first group.
#   * Fifth person goes in the second group.
#   * etc.
# * Ask the user for the number of a group.
# * Print the people in that group, each separated by a comma and a
#   space.  Group numbers are "1-indexed".  This means that, if the
#   user enters `1`, the first group should be printed, not the second
#   group.
# * Keep on asking the user for group numbers until the user enters
#   `stop`.
#
# * Example output
#   ```
#   Enter number of groups
#   3
#   Enter a name
#   Mary
#   Enter a name
#   Lauren
#   Enter a name
#   Awad
#   Enter a name
#   Govind
#   Enter a name
#   Isla
#   Enter a name
#   stop
#   Enter the number of a group to print out
#   1
#   Mary, Govind
#   Enter the number of a group to print out
#   2
#   Lauren, Isla
#   Enter the number of a group to print out
#   3
#   Awad
#   Enter the number of a group to print out
#   stop
#   ```
#
# * Note: You can assume the user will input an integer when asked how
#   many groups they want to create.  You can assume the user will
#   input integers for group numbers that exist when they are asked
#   for the number of a group to print out.
counter = 0
messages = { :group_number => "How many groups would you like to create?",
:enter_name => "Please enter name: ",
:group_to_print => "Enter the number of the group to print out: " }

puts messages[:group_number]
groups = gets.to_i
groups_array = Array.new(groups) { [] }

groups_array.cycle do
  puts messages[:enter_name]
  input = gets.chomp
  break if input == "stop"
  if counter > (groups - 1)
    counter = 0
  end
  groups_array[counter] << input
  counter += 1
end

groups_array.cycle do
  puts messages[:group_to_print]
  input = gets.chomp
  break if input == "stop"
  puts groups_array[input.to_i - 1].join(", ")
end
