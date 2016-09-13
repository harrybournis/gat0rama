require 'rails_helper'

RSpec.describe BlogPost, type: :model do

	subject(:blog_post) { FactoryGirl.build(:blog_post) }

	it { should validate_absence_of :is_slider_post }



end
