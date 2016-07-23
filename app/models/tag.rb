class Tag < ApplicationRecord
    has_many :posts, through: :taggings
    has_many :taggings, dependent: :destroy

    # returns an array of tag objects from an array of ids
    def self.get_by_ids(tags_array)

    	unless tags_array.empty?
    		return Tag.where(id: tags_array)
    	end

    	return [];
    end
end
