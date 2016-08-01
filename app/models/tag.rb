class Tag < ApplicationRecord
    has_many :posts, through: :taggings
    has_many :taggings, dependent: :destroy

    validate :cannot_be_both_main_category_and_only_search_tag

    # returns an array of tag objects from an array of ids
    def self.get_by_ids(tags_array)

    	unless tags_array.empty?
    		return Tag.where(id: tags_array)
    	end

    	return [];
    end

private
	def cannot_be_both_main_category_and_only_search_tag
		if self.is_main_category && self.only_search_tag
			errors.add(:is_main_category, "cannot be both main category, and only search tag")
		end
	end
end
