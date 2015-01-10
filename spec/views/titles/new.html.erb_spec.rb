require 'rails_helper'

RSpec.describe "titles/new", :type => :view do
  before(:each) do
    assign(:title, Title.new())
  end

  it "renders new title form" do
    render

    assert_select "form[action=?][method=?]", titles_path, "post" do
    end
  end
end
