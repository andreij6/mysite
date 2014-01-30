require 'spec_helper'

describe "blogs/index" do
  before(:each) do
    assign(:blogs, [
      stub_model(Blog,
        :title => "Title",
        :body => "MyText",
        :category => "Category",
        :visible => false
      ),
      stub_model(Blog,
        :title => "Title",
        :body => "MyText",
        :category => "Category",
        :visible => false
      )
    ])
  end

  it "renders a list of blogs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
