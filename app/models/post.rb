class Post < ApplicationRecord
    has_many :tags, through: :taggings
    has_many :taggings, dependent: :destroy

    validates :subtitle, presence: true

    accepts_nested_attributes_for :tags

    #override create to create tags
    def self.create_with_tags(post_params)

    	params_without_tags = post_params.except(:tags_attributes)

    	if post = self.create( params_without_tags )
    		tags_attributes = post_params.slice(:tags_attributes)

			if tags_attributes.empty?
    			return post
			else

				tags_array = []
    			tags_attributes[:tags_attributes].map { |tag| tags_array << tag[:id] }

    			tags_list = Tag.get_by_ids(tags_array)

    			tags_list.each do |tag|
    				post.tags << tag
    			end

    			return post
    		end
    	end

   		return nil
    end

end
