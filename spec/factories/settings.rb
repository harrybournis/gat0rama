FactoryGirl.define do
	factory :setting do
		description { Faker::Name.name_with_middle + Faker::Number.number(5) }
		value { {header_logo: "/images/LOGOSITETEST.png", navbar_links_color: "#063a35", website_background_color: "transparent", website_background_image: ""} }
	end
end
