require 'rails_helper'

RSpec.describe Blog, type: :model do

    before(:all) do
      @blog = create(:blog)
    end

  context 'title' do

    it "is valid with valid attributes" do
      expect(@blog).to be_valid
    end

    it "is not valid without a title" do
      untitled_blog = build(:blog, title: "")
      expect(untitled_blog).to_not be_valid
    end

    it "is not valid if title is shorter than 3 characters" do
      short_titled_blog = build(:blog, title: "Hi")
      expect(short_titled_blog).to_not be_valid
    end

    it "is not valid if title is longer than 50 characters" do
      long_title = "a" * 51
      long_titled_blog = build(:blog, title: long_title)
      expect(long_titled_blog).to_not be_valid
    end

  end
  # title present
  # title minimum length
  # title maximum length
  # description present
  # description miniumum length
  # description maximum length

end
