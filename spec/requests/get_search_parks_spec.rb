require 'rails_helper'

describe "get search route", :type => :request do

  before do
    park = Park.create(name: 'Glacier', location: 'Montana', free_entrance_days: 'Everyday!', id: 1)
    get '/parks/search?location=Montana'
  end

  it 'returns destinations by location' do
    expect(JSON.parse(response.body)['location']).to eq 'Montana'
  end

end
