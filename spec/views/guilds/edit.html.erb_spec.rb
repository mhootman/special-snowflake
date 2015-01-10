require 'rails_helper'

RSpec.describe "guilds/edit", :type => :view do
  before(:each) do
    @guild = assign(:guild, Guild.create!())
  end

  it "renders the edit guild form" do
    render

    assert_select "form[action=?][method=?]", guild_path(@guild), "post" do
    end
  end
end
