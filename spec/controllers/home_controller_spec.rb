require 'rails_helper'

describe HomeController, :type => :controller do
  describe "#index" do
    def do_request
      get :index
    end

    let!(:shoes)             { create(:shoe) }
    let!(:brands)             { create(:brand) }

    it "show shoe list" do
      do_request

      expect(assigns(:shoes).size).to eq 1
    end
  end
end