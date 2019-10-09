def valid_isbn?(string)
  if contains_only_valid_characters? string
    number_only_string = string.tr("-", "")
    conforms_to_isbn_10_formula?(number_only_string)
  else
    false
  end
end

def contains_only_valid_characters?(string)
  valid_characters = [*('0'..'9'), '-', 'X']
  string.chars.each do |char|
    return false unless valid_characters.include? char
  end

  true
end

def conforms_to_isbn_10_formula?(string)
  return false if string.length != 10

  numbers = string.chars.map { |char| char == "X" ? 10 : char.to_i }

  (numbers[0] * 10 +
   numbers[1] * 9 +
   numbers[2] * 8 +
   numbers[3] * 7 +
   numbers[4] * 6 +
   numbers[5] * 5 +
   numbers[6] * 4 +
   numbers[7] * 3 +
   numbers[8] * 2 +
   numbers[9] * 1) % 11 === 0
end

puts valid_isbn?("3-598-21507-X")