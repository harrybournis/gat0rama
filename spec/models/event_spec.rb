require 'rails_helper'

RSpec.describe Event, type: :model do

	it 'factory is valid' do
		expect(FactoryGirl.create(:event)).to be_truthy
		expect(FactoryGirl.create(:event_unpublished)).to be_truthy
	end

	it { should belong_to :post }

  it { should validate_presence_of :date }
  it { should validate_presence_of :content }
  it { should validate_presence_of :importance }
  it { should validate_presence_of :post }
  it { should validate_uniqueness_of :post_id }

  it 'delegates published' do
  	e = FactoryGirl.create(:event_unpublished)
  	expect(e.is_published?).to eq(false)

  	e = FactoryGirl.create(:event)
  	expect(e.is_published?).to eq(true)
	end

	it 'published returns the correct number of posts' do
		expect {
			2.times { FactoryGirl.create(:blog_post_with_event) }
		}.to change { Event.published.length }.by 2

		expect {
			1.times { FactoryGirl.create(:blog_post_with_event, is_published: false, published_at: nil) }
		}.to_not change { Event.published.length }
	end
end
