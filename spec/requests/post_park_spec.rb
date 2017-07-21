require 'rails_helper'

describe 'post park route', :type => :request do

  before do
    post '/parks', params: { name: 'Glacier', location: 'Montana', free_entrance_days: 'All day every day' }
  end

  it 'returns the location' do
   expect(JSON.parse(response.body)['location']).to eq "Montana"
 end


end
