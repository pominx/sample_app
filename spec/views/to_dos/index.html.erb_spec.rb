require 'rails_helper'

RSpec.describe "to_dos/index", :type => :view do
  before(:each) do
    assign(:to_dos, [
      ToDo.create!(
        :title => "Title",
        :description => "MyText"
      ),
      ToDo.create!(
        :title => "Title",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of to_dos" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
