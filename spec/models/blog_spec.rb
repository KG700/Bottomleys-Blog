require 'rails_helper'

RSpec.describe Blog, type: :model do

    before(:all) do
      @blog = create(:blog)
    end

  context 'valid blogs' do
    it "is valid with valid attributes" do
      expect(@blog).to be_valid
    end
    # it "returns a list of blogs" do
    #   blogs = Blog.all
    #   p blogs
    #   expect(blogs).to include 'Interesting title'
    #   expect(blogs).to include 'Interesting description'
    # end
  end

  context 'title' do

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

  context 'description' do

    it "is not valid without a description" do
      no_description_blog = build(:blog, description: "")
      expect(no_description_blog).to_not be_valid
    end

    it "is not valid if description is shorter than 10 characters" do
      short_description = "a" * 9
      short_description_blog = build(:blog, description: short_description)
      expect(short_description_blog).to_not be_valid
    end

    it "is not valid if description is longer than 300 characters" do
      long_description = "a" * 301
      long_description_blog = build(:blog, description: long_description)
      expect(long_description_blog).to_not be_valid
    end

  end

end
