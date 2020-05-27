require 'rails_helper'

RSpec.describe BlogsController, type: :controller do

  before(:all) do
    @blog = create(:blog)
  end

  describe 'GET #index' do

    it "returns a success response" do
      get :index
      expect(response).to be_successful
    end

  end

  # describe 'GET #show' do
  #   it 'assigns the requested blog as @blog' do
  #     get :show, {:id => @blog.to_param}
  #     expect(response).to eq @blog
  #   end
  # end
end
