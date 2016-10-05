require 'rails_helper'

RSpec.describe BlogPost, type: :model do

	subject(:blog_post) { FactoryGirl.build(:blog_post) }

	it { should have_one :event }

end
