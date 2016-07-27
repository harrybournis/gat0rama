class NewsController < ApplicationController

	before_action :set_news, only: [:show]

	include ApplicationHelper

	def index
		@news = News.all

		@images = generate_dummy_images
	end


	def show

		@images = []

		17.times do |index|
			@images << "/placeholders/post" + (index + 1).to_s + ".jpeg"
		end
	end


private
	def set_news
		@news = News.find(params[:id])
	end
end
