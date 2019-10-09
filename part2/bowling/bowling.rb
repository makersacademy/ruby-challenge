class Game
	def initialize
		@score = []
		@bonus = 0
	end

	def score
		@score.sum
	end


	def roll(pins)
		@score << pins
	end
	
end



# frame_one = [10, 0]
# frame_two = [5, 3]

# if (frame_one.sum == 10) && !frame_one.include?(0)
# 	puts frame_one.sum + frame_two[0]
# else 
# 	puts frame_one.sum + frame_two.sum
# end

# puts frame_one.sum + frame_two[0]