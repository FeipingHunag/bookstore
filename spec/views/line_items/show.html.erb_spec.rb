require 'spec_helper'

describe "line_items/show.html.erb" do
  before(:each) do
    @line_item = assign(:line_item, stub_model(LineItem,
      :book_id => 1,
      :cart_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end