require 'rails_helper'

describe "patch hikes route", :type => :request do

  before do
    park = Park.create(name: 'Glacier', location: 'Montana', free_entrance_days: 'Everyday!', id: 1)
    hike = Hike.create(name: 'Best Hike Ever', miles: 8.1, difficulty: 'medium', park_id: 1)
    patch "/parks/#{park.id}/hikes/#{hike.id}", params: { name: 'Best Hike Ever, seriously' }
  end

  it 'returns update message' do
    expect(JSON.parse(response.body)['message']).to eq "Hike successfully updated."
  end

  it 'returns status code 200' do
    expect(response).to have_http_status :success
  end

end
