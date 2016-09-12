module ApplicationHelper

	def generate_dummy_images
		images = []

		20.times do |index|
			images << "/placeholders/post_" + (index + 1).to_s + ".jpg"
		end

		return images
	end

	def generate_dummy_slider_images
		images = []

		5.times do |index|
			images << "/placeholders/slider_" + (index + 1).to_s + ".jpg"
		end

		return images
	end
end
