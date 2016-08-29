require 'rails_helper'

RSpec.describe "to_dos/new", :type => :view do
  before(:each) do
    assign(:to_do, ToDo.new(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new to_do form" do
    render

    assert_select "form[action=?][method=?]", to_dos_path, "post" do

      assert_select "input#to_do_title[name=?]", "to_do[title]"

      assert_select "textarea#to_do_description[name=?]", "to_do[description]"
    end
  end
end
