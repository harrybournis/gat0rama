class EventSerializer < ActiveModel::Serializer
  attributes :id, :date, :time, :content, :location, :importance, :post_id

  def date
  	object.date.to_date
  end

  def time
  	object.date.to_i
  end
end
