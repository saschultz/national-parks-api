require 'rails_helper'

describe "delete park route", :type => :request do

  before do
    park = Park.create(name: 'Glacier', location: 'Montana', free_entrance_days: 'Everyday!', id: 1)
    delete "/parks/#{park.id}"
  end

  it 'destroys the park' do
    expect(response).to have_http_status 204
  end

end
