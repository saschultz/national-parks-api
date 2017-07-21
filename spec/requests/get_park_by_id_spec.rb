require 'rails_helper'

describe 'get park by id route', :type => :request do

  before do
    park = Park.create(name: 'Park', location: 'Oregon', free_entrance_days: 'Everyday!', id: 2)
    get '/parks/2'
  end

  it 'returns one park' do
    expect(JSON.parse(response.body)['location']).to eq 'Oregon'
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

end
