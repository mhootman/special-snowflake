require 'rails_helper'

RSpec.describe "titles/index", :type => :view do
  before(:each) do
    assign(:titles, [
      Title.create!(),
      Title.create!()
    ])
  end

  it "renders a list of titles" do
    render
  end
end
