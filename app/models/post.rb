class Post < ApplicationRecord

  # Associations
  has_many :tags, through: :taggings
  has_many :taggings, dependent: :destroy

  # Validations
  validates_presence_of :title, :subtitle
  validate :is_published_is_true_if_publication_date_exists
  validate :published_at_exists_if_is_published_is_true

  accepts_nested_attributes_for :tags

  # Class Methods

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


  # Instance Methods

  # Publish the post. sets is_published to true and sets the current time
  # as published_at
  #
  # return boolean
  def publish
    if is_published == true
      errors.add(:is_published, 'already true. Post is already published')
      return false
    end

    return update(is_published: true, published_at: DateTime.now)
  end

  # Unpublish a post. Sets is_published to false and published_at to nil
  #
  # return boolean
  def unpublish
    if is_published == false
      errors.add(:is_published, 'already false. Post not published.')
      return false
    end

    return update( is_published: false, published_at: nil)
  end

  private

    def is_published_is_true_if_publication_date_exists
      if is_published.present? && is_published == true
        if published_at.nil?
          errors.add(:is_published, "can't be true without a published_at date")
        end
      end
    end

    def published_at_exists_if_is_published_is_true
      if !persisted? && published_at.present?
        if is_published.nil? || is_published == false
          errors.add(:published_at, "can't be set without a is_published being true")
        end
      end
    end
end
