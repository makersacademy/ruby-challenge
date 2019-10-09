class SecretHandshake
    @@decode = ["wink", "double blink", "close your eyes", "jump"]
    
    def initialize(number)
        @number = number
    end

    def get
        number = @number.to_s(2)
        secrets = number.reverse.chars.collect.with_index { 
            |bit, index|
            @@decode[index]  if bit == "1"
        }
        secrets.compact!
        return secrets.reverse! if number.chars.count == 5 && number.chars.first == "1"
        return secrets
    end

end
