require 'rails_helper'

RSpec.describe "FlashCards", type: :request do
  describe "GET /flash_cards" do
    it "works! (now write some real specs)" do
      get flash_cards_path
      expect(response).to have_http_status(200)
    end
  end
end
