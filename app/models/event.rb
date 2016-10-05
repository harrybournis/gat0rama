class Event < ApplicationRecord
	# Attributes
	# date (DateTime)
	# content (String)
	# location (String)
	# importance (Integer)

	# Associations
	belongs_to :post

	# Validations
	validates_presence_of :date, :content, :importance, :post
	validates_uniqueness_of :post_id


	# Class Methods
	def self.published
		joins(:post).where('posts.is_published = true')
	end

	# Instance Methods
	delegate :is_published?, to: :post
end
