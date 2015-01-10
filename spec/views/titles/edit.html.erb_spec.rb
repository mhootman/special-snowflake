require 'rails_helper'

RSpec.describe "titles/edit", :type => :view do
  before(:each) do
    @title = assign(:title, Title.create!())
  end

  it "renders the edit title form" do
    render

    assert_select "form[action=?][method=?]", title_path(@title), "post" do
    end
  end
end
