class Game
	def initialize
		@score = []
		@frames_arr = []
	end

	def score
		# @frames_arr = @score.each_slice(2).to_a
		frames
		@score = @frames_arr.sum
		# @score.sum
	end
	
	def roll(pins)
		@score << pins
	end

	def frames
		i = 0
		loop do
			@frames_arr << (@score[i] + @score[i+1])
			i += 2
			if i == @score.length
				break
			end
		end
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