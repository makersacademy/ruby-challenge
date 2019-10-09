class Game

    def initialize
        @rolls = []
        @score = 0
    end

    def roll(pins)
        @rolls << pins
    end

    def spare_check
        for i in (0...@rolls.size-3).step(2) do
            if @rolls[i] + @rolls[i+1] == 10
                @rolls[i+1] += @rolls[i+2] 
            i += 2
            end 
        end
    end

    def strike_check
        if @rolls[0] == 10
            @rolls[0] += @rolls[1] + @rolls[2]
        end
    end

    def score
        spare_check
        strike_check
        @score = @rolls.sum
    end

end