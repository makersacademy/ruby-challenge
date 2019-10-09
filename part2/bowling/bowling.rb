class Game
  def initialize
    @rolls = []
    @score = 0
  end

  def roll(pins)
    @rolls.push(pins)
  end

  def score
    add_total_score
    @score
  end

  def add_total_score 
    @score = score_each_go.reduce(:+)
  end
  
  def score_each_go
    each_go_score = []
    current_go = 0 
    until current_go === split_rolls.length
      if is_a_strike?(split_rolls[current_go])
        total_go_score = split_rolls[current_go].reduce(:+) + split_rolls[current_go + 1].reduce(:+)
        each_go_score << total_go_score
      elsif is_a_spare?(split_rolls[current_go])
        total_go_score = split_rolls[current_go].reduce(:+) + split_rolls[current_go + 1].first
        each_go_score << total_go_score
      else
        total_go_score = split_rolls[current_go].reduce(:+)
        each_go_score << total_go_score
      end
      current_go += 1
    end
    return each_go_score
  end

  def is_a_spare?(go)
    go.reduce(:+) === 10    
  end

  def is_a_strike?(go)
    go.first === 10 
  end


  def split_rolls
    @rolls.each_slice(2).to_a
  end
end
