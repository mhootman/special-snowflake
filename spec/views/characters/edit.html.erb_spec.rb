require 'rails_helper'

RSpec.describe "characters/edit", :type => :view do
  before(:each) do
    @character = assign(:character, Character.create!())
  end

  it "renders the edit character form" do
    render

    assert_select "form[action=?][method=?]", character_path(@character), "post" do
    end
  end
end
