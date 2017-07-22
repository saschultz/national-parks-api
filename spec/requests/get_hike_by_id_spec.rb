require 'rails_helper'

describe 'get hike by id route', :type => :request do

  before do
    park = Park.create(name: 'National Park', location: 'Oregon', free_entrance_days: 'Everyday!', id: 3)
    hike = Hike.create(name: 'Oregon Hike', miles: 4.5, difficulty: 'medium', park_id: 3)
    get "/parks/#{park.id}/hikes/#{hike.id}"
  end

  it 'returns one hike' do
    expect(JSON.parse(response.body)['name']).to eq 'Oregon Hike'
  end

end
