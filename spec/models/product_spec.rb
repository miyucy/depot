require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Product do
  before(:each) do
    @valid_attributes = {
      :title => "value for title",
      :description => "value for description",
      :image_url => "value for image_url.jpg",
      :price => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Product.create!(@valid_attributes)
  end
end
