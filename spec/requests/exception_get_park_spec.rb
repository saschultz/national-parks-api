require 'rails_helper'

describe 'get a park route', :type => :request do

  before do
    get '/parks/12'
  end

  it 'returns an error if no park is found' do
    expect(response).to have_http_status(:not_found)
  end

end
