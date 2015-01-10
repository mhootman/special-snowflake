require 'rails_helper'

RSpec.describe "titles/show", :type => :view do
  before(:each) do
    @title = assign(:title, Title.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
