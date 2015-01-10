require 'rails_helper'

RSpec.describe "guilds/new", :type => :view do
  before(:each) do
    assign(:guild, Guild.new())
  end

  it "renders new guild form" do
    render

    assert_select "form[action=?][method=?]", guilds_path, "post" do
    end
  end
end
