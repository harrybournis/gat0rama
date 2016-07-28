class HomeController < ApplicationController

	include ApplicationHelper

	def index
		@posts = Post.all
		#@settings = Setting.first.value

		@images = generate_dummy_images
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
