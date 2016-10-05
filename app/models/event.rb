class Event < ApplicationRecord
	# Attributes
	# date (DateTime)
	# content (String)
	# location (String)
	# importance (Integer)

	# Associations
	belongs_to :post

	# Validations
	validates_presence_of :date, :content, :importance
end
