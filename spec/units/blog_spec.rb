require 'rails_helper'

RSpec.describe Blog, type: :model do

    before(:all) do
      @blog = create(:blog)
    end

  it "is valid with valid attributes" do
    expect(@blog).to be_valid
  end
  # 
  # it { should validate_presence_of(:title) }
  #
  # it { should validate_presence_of(:description) }

end
