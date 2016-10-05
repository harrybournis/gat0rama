FactoryGirl.define do
  factory :event do
    date "2016-10-05 20:26:18"
    content "Event something happen"
    location "place"
    importance 1
    association :post, factory: :news

    factory :event_unpublished do
    	association :post, factory: :news_unpublished
    end
  end
end
