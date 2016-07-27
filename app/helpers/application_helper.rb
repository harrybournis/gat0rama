module ApplicationHelper

	def generate_dummy_images
		images = []

		20.times do |index|
			images << "placeholders/post%20(" + (index + 1).to_s + ").jpg"
		end
		Rails.logger.info images.first
		return images
	end
end
