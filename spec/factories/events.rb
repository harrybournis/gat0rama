FactoryGirl.define do
  factory :event do
    date "2016-10-05 20:26:18"
    content "Event something happen"
    location "place"
    importance 1
    association :post, factory: :news
  end
end
