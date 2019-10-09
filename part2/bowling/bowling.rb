class Game

    def initialize
        @rolls = []
        @score = 0
    end

    def roll(pins)
        @rolls << pins
    end

    def score()
        if @rolls[0] + @rolls[1] == 10
            @rolls[2] = @rolls[2]*2
        end
        @score = @rolls.sum
    end

end