
def CalculateIsbn(numbers)
    if numbers.length == 10
        x = 10
        part1 = 0
        numbers.each do |i|
            i *= x
            part1 += i
            x -=1
        end
        return true if part1 % 11 == 0
        return false if part1 % 11 != 0
    else
        false
    end
end

def isbnVerify(string)
    isbnNumbers = ["0","1","2","3","4","5","6","7","8","9"]
    nums = []
    splitString = string.split("")

    splitString.each do |number|
        if isbnNumbers.include?(number) or number == "X"
            nums << 10 if number == "X"
            nums << number.to_i if number != "X"
        end
    end 
    CalculateIsbn(nums)
end

isbnVerify("3-598-21508-8")