class HomeController < ApplicationController

	def index
		@posts = Post.where(is_slider_post: false)
		@slider_posts = Post.where(is_slider_post: true)

		@paralax_images = ParalaxImage.all
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
