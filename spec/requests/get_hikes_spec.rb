require 'rails_helper'

describe 'get hikes route', :type => :request do

  before do
    park = Park.create(name: 'Glacier', location: 'Montana', free_entrance_days: 'Everyday!', id: 1)
    hike = Hike.create(name: 'Best Hike Ever', miles: 8.1, difficulty: 'medium', park_id: 1)
    get "/parks/#{park.id}/hikes"
  end

  it 'returns all hikes for a specific park' do
    expect(JSON.parse(response.body).size).to eq 1
  end

end
