require 'rails_helper'

RSpec.describe "guilds/show", :type => :view do
  before(:each) do
    @guild = assign(:guild, Guild.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
