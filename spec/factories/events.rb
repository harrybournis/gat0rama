FactoryGirl.define do
  factory :event do
    date { Faker::Date.between(10.days.ago, Date.today + 10.days) }
    content "Event something happen"
    location "place"
    importance 1
    association :post, factory: :news

    factory :event_unpublished do
    	association :post, factory: :news_unpublished
    end
  end
end
