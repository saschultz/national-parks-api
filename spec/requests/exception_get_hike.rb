require 'rails_helper'

describe 'get a hike route', :type => :request do

  before do
    get '/parks/12/hikes/7'
  end

  it 'returns an error if no hike is found' do
    expect(response).to have_http_status(:not_found)
  end

end
