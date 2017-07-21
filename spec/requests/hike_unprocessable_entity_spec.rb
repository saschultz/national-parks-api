require 'rails_helper'

describe 'post a hike exception route', :type => :request do
  before do
    park = Park.create(name: 'Glacier', location: 'Montana', free_entrance_days: 'Everyday!', id: 1)
    post "/parks/#{park.id}/hikes"
  end

  it 'returns a created exception status' do
    expect(response).to have_http_status(:unprocessable_entity)
  end
end
