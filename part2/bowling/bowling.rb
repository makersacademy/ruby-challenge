class Game
  def initialize
    @rolls = [] 
    @rolls_index_position = 0
    @score = 0   
    @frame = 1
  end

  def roll(pins)
    @rolls << pins
  end

  def score
    calculate_roll_score
    
    @score
  end

  def update_roll_position(number)
    @rolls_index_position += number
  end

  def is_a_strike?
    @rolls[@rolls_index_position] === 10
  end

  def is_a_spare?
    @rolls[@rolls_index_position] + @rolls[@rolls_index_position + 1] === 10
  end

  def is_last_frame?
    @frame === 10
  end   

  def calculate_roll_score
      if is_last_frame? 
        @score += @rolls[@rolls_index_position + 1] + @rolls[@rolls_index_position + 2] + 10
        @rolls_index_position = @rolls.length - 1 
      elsif is_a_strike?
        @score += @rolls[@rolls_index_position + 2] + @rolls[@rolls_index_position + 3] + 10
        update_roll_position(1)
      elsif is_a_spare?
        @score += @rolls[@rolls_index_position + 2] + 10
        update_roll_position(2)
      else
        @score += @rolls[@rolls_index_position] + @rolls[@rolls_index_position + 1]
        update_roll_position(2)
      end
      @frame += 1
  end

  def calculate_total_score
    while @rolls_index_position < @rolls.length - 1 
      calculate_roll_score
      puts "frame: #{frame} index: #{@rolls_index_position} score: #{@score}" 
    end
  end
end