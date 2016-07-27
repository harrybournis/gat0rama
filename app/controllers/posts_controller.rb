class PostsController < ApplicationController

	before_action :set_post, only: [:show]


	def index
		@posts = Post.all

		@images = []

		17.times do |index|
			@images << "/placeholders/post" + (index + 1).to_s + ".jpeg"
		end
	end


	def show
		logger.info @post

		@images = []

		17.times do |index|
			@images << "/placeholders/post" + (index + 1).to_s + ".jpeg"
		end
	end


private

	def set_post
		@post = Post.find(params[:id])
	end
end
