require "rails_helper"

RSpec.describe StateRecycleLawsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/state_recycle_laws").to route_to("state_recycle_laws#index")
    end

    it "routes to #new" do
      expect(:get => "/state_recycle_laws/new").to route_to("state_recycle_laws#new")
    end

    it "routes to #show" do
      expect(:get => "/state_recycle_laws/1").to route_to("state_recycle_laws#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/state_recycle_laws/1/edit").to route_to("state_recycle_laws#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/state_recycle_laws").to route_to("state_recycle_laws#create")
    end

    it "routes to #update" do
      expect(:put => "/state_recycle_laws/1").to route_to("state_recycle_laws#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/state_recycle_laws/1").to route_to("state_recycle_laws#destroy", :id => "1")
    end

  end
end
