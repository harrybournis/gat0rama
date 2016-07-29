class HomeController < ApplicationController

	include ApplicationHelper

	def index
		@posts = Post.all

		# test for performance
		# database:
		@slider_posts = Post.where(is_slider_post: true)

		# ruby:
		# @slider_posts = []
		# @posts.each do |post|
		# 	@slider_posts << post if post.is_slider_post
		# end
		@paralax_images = ParalaxImage.all

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
