FactoryGirl.define do
	factory :news do
		title { Faker::Hipster.sentence }
		subtitle { Faker::Hacker.say_something_smart }
		body { Faker::Hipster.paragraphs(5).join }
		is_slider_post false
		is_published true

		factory :news_unpublished do
			title { Faker::Hipster.sentence }
			subtitle { Faker::Hacker.say_something_smart }
			body { Faker::Hipster.paragraphs(5).join }
			is_slider_post false
			is_published false
		end
	end
end
