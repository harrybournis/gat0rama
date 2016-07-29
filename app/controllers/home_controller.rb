class HomeController < ApplicationController

	include ApplicationHelper

	def index
		@posts = Post.all
		@slider_posts = Post.all.limit(5)

		@images = generate_dummy_images
		@slider_images = generate_dummy_slider_images
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
