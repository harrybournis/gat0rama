class Setting < ApplicationRecord
	store_accessor :website_background_color, :website_background_image,
	:navbar_links_color, :paralax_images, :header_logo

	validates_presence_of :description, :value
	validates_uniqueness_of :description
	validate :format_of_value

	private

		# validate the format of values
		def format_of_value
			return unless value.present?
			permitted = %w(header_logo navbar_links_color website_background_color website_background_image)

			errors.add(:value, 'contains unpermitted params') if value.length > permitted.length
			permitted.each do |val|
				errors.add(:value, "is missing #{val}") 	unless value[val]
			end
		end
end
