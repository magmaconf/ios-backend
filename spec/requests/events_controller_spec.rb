require 'rails_helper'

describe Api::V1::EventsController do
  describe 'GET #index' do
    it 'returns http success' do
      get '/v1/events'
      expect(response).to have_http_status(:success)
      expect(response.header['Content-Type']).to include 'application/json'
    end
  end
end
