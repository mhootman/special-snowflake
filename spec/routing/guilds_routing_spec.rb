require "rails_helper"

RSpec.describe GuildsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/guilds").to route_to("guilds#index")
    end

    it "routes to #new" do
      expect(:get => "/guilds/new").to route_to("guilds#new")
    end

    it "routes to #show" do
      expect(:get => "/guilds/1").to route_to("guilds#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/guilds/1/edit").to route_to("guilds#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/guilds").to route_to("guilds#create")
    end

    it "routes to #update" do
      expect(:put => "/guilds/1").to route_to("guilds#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/guilds/1").to route_to("guilds#destroy", :id => "1")
    end

  end
end
