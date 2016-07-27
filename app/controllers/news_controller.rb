class NewsController < ApplicationController

	before_action :set_news, only: [:show]


	def index
		@news = News.all

		@images = []

		17.times do |index|
			@images << "/placeholders/post" + (index + 1).to_s + ".jpeg"
		end
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
