require 'rails_helper'

RSpec.describe "guilds/index", :type => :view do
  before(:each) do
    assign(:guilds, [
      Guild.create!(),
      Guild.create!()
    ])
  end

  it "renders a list of guilds" do
    render
  end
end
