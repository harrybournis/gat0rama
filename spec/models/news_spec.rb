require 'rails_helper'

RSpec.describe News, type: :model do

	subject(:news) { FactoryGirl.build(:news_unpublished) }

	it { should validate_absence_of :is_slider_post }

	it 'validates that it cannot be slider post' do
		news = News.new(title: 'title', subtitle: 'subtitle', body: 'body', is_slider_post: true)
		expect(news.valid?).to be_falsy
		expect(news.errors[:is_slider_post][0]).to include("can't be true for a News Item")
	end

	it 'validates that is_published and published_at cannot be set without the other' do
		news = News.new(title: 'title', subtitle: 'subtitle', body: 'body', published_at: DateTime.now)
		expect(news.valid?).to be_falsy
		expect(news.errors[:published_at][0]).to include("can't be set without a is_published being true")

		news = News.new(title: 'title', subtitle: 'subtitle', body: 'body', is_published: true)
		expect(news.valid?).to be_falsy
		expect(news.errors[:is_published][0]).to include("can't be true without a published_at date")
	end

	it 'can be published' do
		news  = FactoryGirl.create(:blog_post_unpublished)
		expect(news.is_published).to be_falsy
		expect(news.published_at).to be_falsy

		expect(news.publish).to be_truthy

		expect(news.is_published).to be_truthy
		expect(news.published_at).to be_truthy

		expect(news.publish).to be_falsy
		expect(news.errors[:is_published][0]).to include('already true')
	end

	it 'can be unpublished' do
		news  = FactoryGirl.create(:blog_post_unpublished)
		expect(news.is_published).to be_falsy
		expect(news.published_at).to be_falsy

		expect(news.publish).to be_truthy

		expect(news.is_published).to be_truthy
		expect(news.published_at).to be_truthy

		expect(news.unpublish).to be_truthy
		expect(news.is_published).to be_falsy
		expect(news.published_at).to be_falsy

		expect(news.unpublish).to be_falsy
		expect(news.errors[:is_published][0]).to include('already false')
	end

end
