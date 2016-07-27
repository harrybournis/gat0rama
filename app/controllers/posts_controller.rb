class PostsController < ApplicationController

	before_action :set_post, only: [:show]

	include ApplicationHelper

	def index
		@posts = Post.all

		@images = generate_dummy_images
	end


	def show
		logger.info @post

		@images = generate_dummy_images
	end


private

	def set_post
		@post = Post.find(params[:id])
	end
end
