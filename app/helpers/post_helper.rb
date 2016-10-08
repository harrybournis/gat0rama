module PostHelper
	@@patterns = [[9, 5, 6], [3, 7, 9], [9, 6, 3], [3, 5, 9]]

	def pick_random_pattern
		@@patterns.sample
	end
end
