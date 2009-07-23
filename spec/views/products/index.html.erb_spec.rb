require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/products/index.html.erb" do
  include ProductsHelper

  before(:each) do
    assigns[:products] = [
      stub_model(Product,
        :title => "value for title",
        :description => "value for description",
        :image_url => "value for image_url",
        :price => 1
      ),
      stub_model(Product,
        :title => "value for title",
        :description => "value for description",
        :image_url => "value for image_url",
        :price => 1
      )
    ]
  end

  it "renders a list of products" do
    render
    response.should have_tag("span.list-title", "value for title".to_s, 2)
    response.should have_tag("td>p", "value for description".to_s, 2)
    response.should have_tag("img.list-image[src=?]", "value for image_url", 2)
  end
end
