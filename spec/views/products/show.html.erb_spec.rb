require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/products/show.html.erb" do
  include ProductsHelper
  before(:each) do
    assigns[:product] = @product = stub_model(Product,
      :title => "value for title",
      :description => "value for description",
      :image_url => "value for image_url",
      :price => 1
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ title/)
    response.should have_text(/value\ for\ description/)
    response.should have_text(/value\ for\ image_url/)
    response.should have_text(/1/)
  end
end
