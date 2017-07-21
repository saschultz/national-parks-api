require 'rails_helper'

describe 'get parks route', :type => :request do
  let!(:parks) {FactoryGirl.create_list(:park, 15)}

  before { get '/parks' }

  it 'returns all parks' do
    expect(JSON.parse(response.body).size).to eq 15
  end

  
end
