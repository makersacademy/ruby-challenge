class Isbn
  def initialize(isbn)
      @isbn = isbn.gsub(/[^0-9X-Xx-x]/, '')
      @totalIsbn10 = 0
      @totalIsbn13 = 0
      @checkDigit13 = nil
  end

  def validate
      count = @isbn.size
      @isbn.split("").each{ |char|
        char = "10" if char.upcase == "X"
        @totalIsbn10 += toInt(char) * count
        count -= 1
      }
      @totalIsbn10 % 11
  end

  def convert
    if validate == 0
      isbn13 = removeLastAndPrepend
      isbn13.split("").each.with_index { |char,index|
      getMod(index, 2) == 0 ? multiply = 1 : multiply = 3
      @totalIsbn13 += toInt(char) * multiply
      }
      getMod(@totalIsbn13, 10) != 0 ? @checkDigit13 = (10 - getMod(@totalIsbn13, 10)).to_s : @checkDigit13 = "0"
      addCheckDigit(isbn13)
    else
      puts "Invalid ISBN"
    end
  end

  private

  def addCheckDigit(isbn13)
    isbn13.insert(-1, "#{@checkDigit13}")
  end
  
  def toInt(char)
    char.to_i
  end

  def removeLastAndPrepend
    @isbn[0...-1].prepend("978")
  end

  def getMod(number, mod)
    number % mod
  end

end

