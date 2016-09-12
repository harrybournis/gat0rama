class News < Post

	validate :cant_be_slider_post

	private

		def cant_be_slider_post
			if is_slider_post.present? && is_slider_post == true
				errors.add(:is_slider_post, "can't be true for a News Item. Available only for Blog Posts.")
			end
		end

end
