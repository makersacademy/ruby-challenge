class Game

    def initialize
        @rolls = []
        @score = 0
    end

    def roll(pins)
        @rolls << pins
    end

    def score()
       
        for i in (0...@rolls.length).step(2) do
            if @rolls[i] + @rolls[i+1] == 10
                @rolls[i+1] += @rolls[i+2] 
            i += 2
            end 
        end
        @score = @rolls.sum
    end

end