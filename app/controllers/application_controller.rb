class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception

	before_action :get_settings

private
	def get_settings
		@settings = Setting.first.value
	end
end
