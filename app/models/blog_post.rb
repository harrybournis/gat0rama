class BlogPost < Post

	# Class Methods
	def self.slider_posts
		where(is_slider_post: true)
	end
end
