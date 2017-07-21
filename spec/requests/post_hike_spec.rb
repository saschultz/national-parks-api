require 'rails_helper'

describe 'post hike route', :type => :request do

  before do
    park = Park.create(name: 'Glacier', location: 'Montana', free_entrance_days: 'Everyday!', id: 1)
    post "/parks/#{park.id}/hikes", params: { name: 'Beauty', miles: 3.3, difficulty: 'easy', park_id: 1 }
  end

  it 'returns the park' do
    expect(JSON.parse(response.body)['location']).to eq "Montana"
  end

end
