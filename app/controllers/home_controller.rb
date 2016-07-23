class HomeController < ApplicationController

	def index
		@yo = "yo"
		@posts = Post.all
	end
end
