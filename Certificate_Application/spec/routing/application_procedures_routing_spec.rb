require "rails_helper"

RSpec.describe ApplicationProceduresController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/application_procedures").to route_to("application_procedures#index")
    end


    it "routes to #show" do
      expect(:get => "/application_procedures/1").to route_to("application_procedures#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/application_procedures").to route_to("application_procedures#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/application_procedures/1").to route_to("application_procedures#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/application_procedures/1").to route_to("application_procedures#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/application_procedures/1").to route_to("application_procedures#destroy", :id => "1")
    end

  end
end
