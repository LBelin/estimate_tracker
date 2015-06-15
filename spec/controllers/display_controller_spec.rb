require 'rails_helper'
require 'Order'

RSpec.describe DisplayController, type: :controller do

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end

  describe 'Order' do
    current = [[36,72],[100,110],[50,60],[20,15],[2,4],[10,8],[2,2],[10,3.4],[36,12]]

    it 'worst sorting' do
      ordered = Order.worst(current)
      expect(ordered).to eq(0)
    end

    it 'best sorting' do
      ordered = Order.best(current)
      expect(ordered).to eq(0)
    end
  end

end
