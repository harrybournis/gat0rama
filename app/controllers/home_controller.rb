class HomeController < ApplicationController

	def index
		@yo = "yo"
		@posts = Post.all

		@images = []

		17.times do |index|
			@images << "placeholders/post" + (index + 1).to_s + ".jpeg"
		end
	end

	def about
		@hello = 'about'
	end

	def contribute
		@hello = 'contribute'
	end

	def news
		@news = 'news'
	end
end
