require 'rails_helper'

describe 'get random route', :type => :request do

  before do
    @park = Park.create(name: 'Glacier', location: 'Montana', free_entrance_days: 'Everyday!', id: 1)
    get '/parks/random'
  end

  it 'returns one random park' do
    expect(JSON.parse(response.body)['location']).to eq @park.location
  end

end
