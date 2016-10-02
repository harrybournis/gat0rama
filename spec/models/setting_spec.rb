require 'rails_helper'

RSpec.describe Setting, type: :model do

	it 'factory is valid' do
		expect(FactoryGirl.create(:setting)).to be_truthy
	end

	it { should validate_uniqueness_of :description }
	it { should validate_presence_of :description }
	it { should validate_presence_of :value }

	it "validates the format of the value" do
		setting = FactoryGirl.build(:setting, value:
			{ navbar_links_color: "#063a35", website_background_color: "transparent", website_background_image: ""})
		expect(setting.valid?).to be_falsy
		expect(setting.errors[:value][0]).to include('missing header_logo')

		setting = FactoryGirl.build(:setting, value:
			{ header_logo: "/images/LOGOSITETEST.png", website_background_color: "transparent", website_background_image: ""})
		expect(setting.valid?).to be_falsy
		expect(setting.errors[:value][0]).to include('missing navbar_links_color')

		setting = FactoryGirl.build(:setting, value:
			{ header_logo: "/images/LOGOSITETEST.png", navbar_links_color: "#063a35", website_background_image: ""})
		expect(setting.valid?).to be_falsy
		expect(setting.errors[:value][0]).to include('missing website_background_color')

		setting = FactoryGirl.build(:setting, value:
			{ header_logo: "/images/LOGOSITETEST.png", navbar_links_color: "#063a35", website_background_color: "transparent" })
		expect(setting.valid?).to be_falsy
		expect(setting.errors[:value][0]).to include('missing website_background_image')

		setting = FactoryGirl.build(:setting, value:
			{ header_logo: "/images/LOGOSITETEST.png", navbar_links_color: "#063a35", website_background_color: "transparent", website_background_image: "", wrong: 'value' })
		expect(setting.valid?).to be_falsy
		expect(setting.errors[:value][0]).to include('unpermitted params')

		setting = FactoryGirl.build(:setting, value:
			{ header_logo: "/images/LOGOSITETEST.png", navbar_links_color: "#063a35", website_background_color: "transparent", website_background_image: "" })
		expect(setting.valid?).to be_truthy
	end
end
