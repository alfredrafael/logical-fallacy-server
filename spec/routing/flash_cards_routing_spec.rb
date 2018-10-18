require "rails_helper"

RSpec.describe FlashCardsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/flash_cards").to route_to("flash_cards#index")
    end


    it "routes to #show" do
      expect(:get => "/flash_cards/1").to route_to("flash_cards#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/flash_cards").to route_to("flash_cards#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/flash_cards/1").to route_to("flash_cards#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/flash_cards/1").to route_to("flash_cards#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/flash_cards/1").to route_to("flash_cards#destroy", :id => "1")
    end

  end
end
