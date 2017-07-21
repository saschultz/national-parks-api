require 'rails_helper'

describe "patch parks route", :type => :request do

  before do
    park = Park.create(name: 'Glacier', location: 'Montana', free_entrance_days: 'Everyday!', id: 1)
    patch "/parks/#{park.id}", params: { free_entrance_days: 'All day, everyday' }
  end

  it 'returns update message' do
    expect(JSON.parse(response.body)['message']).to eq "Park was successfully updated."
  end


end
