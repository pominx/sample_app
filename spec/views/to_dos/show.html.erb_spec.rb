require 'rails_helper'

RSpec.describe "to_dos/show", :type => :view do
  before(:each) do
    @to_do = assign(:to_do, ToDo.create!(
      :title => "Title",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end
