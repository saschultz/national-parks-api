require 'rails_helper'

describe 'post a park exception route', :type => :request do
  before do
    post "/parks"
  end

  it 'returns a created exception status' do
    expect(response).to have_http_status(:unprocessable_entity)
  end
end
