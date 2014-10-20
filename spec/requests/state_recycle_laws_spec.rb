require 'rails_helper'

RSpec.describe "StateRecycleLaws", :type => :request do
  describe "GET /state_recycle_laws" do
    it "works! (now write some real specs)" do
      get state_recycle_laws_path
      expect(response.status).to be(200)
    end
  end
end
