class HomeController < ApplicationController

	def index
		@yo = "yo"
		@posts = Post.all

		@images = []

		17.times do |index|
			@images << "placeholders/post" + (index + 1).to_s + ".jpeg"
		end
		logger.info @images
	end
end
