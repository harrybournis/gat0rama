class Setting < ApplicationRecord
	store_accessor :website_background_color, :website_background_image,
	:navbar_links_color, :paralax_images, :header_logo


	def self.create(params="nil")
		params_globals = { description: "styling", value: {"slider_posts" => "NULL", "paralax_images" => "NULL", "header_logo" => "NULL", "website_background_image" => "NULL", "website_background_color" => "NULL", "navbar_links_color" => "NULL" } }
		#params2 = { description: "globals", value: { "skata" } }
		raise "Setting Already Initialized. Use Setting.first to add settings." if Setting.first
		super(params_globals)
		#super(params2)
	end


	def update(key_val_pair)
		return nil if key_val_pair.empty?

		key_val_pair.each do |key, val|
			self.value[key] = val
		end

		return self.save
	end


	def destroy
		raise "Cannot delete object. Use the class method instead."
		#super
	end

	# Empties the Hash of the first Setting Object
	def self.destroy
		s = Setting.first
		s.globals = {}
		return s.save
	end

end
