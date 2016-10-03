class NewsController < ApplicationController

	before_action :set_news, only: [:show]

	def index
		@news = News.published.paginate(:page => params[:page], :per_page => 1)
	end


	def show
	end


private
	def set_news
		@news = News.find(params[:id])
	end
end
