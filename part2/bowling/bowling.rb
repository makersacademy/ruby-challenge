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
        for i in (0...@rolls.size-3) do 
            if @rolls[i] == 10
                @rolls[i] += @rolls[i+1] + @rolls[i+2]
            end
        end
    end

    def score
        strike_check
        spare_check
        @score = @rolls.sum
    end

end