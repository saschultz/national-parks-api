require 'rails_helper'

describe "delete hike route", :type => :request do

  before do
    park = Park.create(name: 'Glacier', location: 'Montana', free_entrance_days: 'Everyday!', id: 1)
    hike = Hike.create(name: 'Best Hike Ever', miles: 8.1, difficulty: 'medium', park_id: 1)
    delete "/parks/#{park.id}/hikes/#{hike.id}"
  end

  it 'destroys the review' do
    expect(response).to have_http_status 200
  end
end
