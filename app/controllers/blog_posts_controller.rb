class BlogPostsController < ApplicationController

	before_action :set_post, only: [:show]


	def index
		@posts = BlogPost.all
	end


	def show
		logger.info @post
	end


private

	def set_post
		@post = BlogPost.find(params[:id])
	end
end
