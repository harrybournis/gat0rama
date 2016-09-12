FactoryGirl.define do
	factory :blog_post do
		title { Faker::Hipster.sentence }
		subtitle { Faker::Hacker.say_something_smart }
		body { Faker::Hipster.paragraphs(5).join }
		is_slider_post false
		is_published true
		published_at { DateTime.now }

		factory :blog_post_unpublished do
			title { Faker::Hipster.sentence }
			subtitle { Faker::Hacker.say_something_smart }
			body { Faker::Hipster.paragraphs(5).join }
			is_slider_post false
			is_published false
			published_at nil
		end

		factory :blog_post_slider do
			title { Faker::Hipster.sentence }
			subtitle { Faker::Hacker.say_something_smart }
			body { Faker::Hipster.paragraphs(5).join }
			is_slider_post true
			is_published true
			published_at { DateTime.now }
		end
	end
end
