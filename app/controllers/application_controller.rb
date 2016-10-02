class ApplicationController < ActionController::Base
	include ApplicationHelper

	protect_from_forgery with: :exception

	before_action :get_settings
	before_action :set_sample_images

private

	def get_settings
		@settings = Setting.first
	end

	def set_sample_images
		@images = generate_dummy_images
	end
end
