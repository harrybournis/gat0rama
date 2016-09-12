class NewsController < ApplicationController

	before_action :set_news, only: [:show]

	include ApplicationHelper

	def index
		@news = News.all
	end


	def show
	end


private
	def set_news
		@news = News.find(params[:id])
	end
end
