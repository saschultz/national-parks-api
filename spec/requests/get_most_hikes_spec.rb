require 'rails_helper'

describe "get most_hikes route", :type => :request do

  before do
    park = Park.create(name: 'Glacier', location: 'Montana', free_entrance_days: 'Everyday!', id: 1)
    hike = Hike.create(name: 'Best Hike Ever', miles: 8.1, difficulty: 'medium', park_id: 1)
    get "/parks/most_hikes"
  end

  it 'returns destination with most hikes' do
    expect(JSON.parse(response.body).size).to eq 1
  end

  it 'returns status code 200' do
    expect(response).to have_http_status :success
  end

end
