class Member < ApplicationRecord

	#extend ModelRandomizers::FakerHelper

	def full_name
	  	"#{self.first_name} #{self.last_name}"
	end
end
