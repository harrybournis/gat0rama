require 'rails_helper'

RSpec.describe Event, type: :model do

	it 'factory is valid' do
		expect(FactoryGirl.create(:event)).to be_truthy
	end

	it { should belong_to :post }

  it { should validate_presence_of :date }
  it { should validate_presence_of :content }
  it { should validate_presence_of :importance }
end
