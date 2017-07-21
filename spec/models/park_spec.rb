require 'rails_helper'

describe Park do
  it { should have_many :hikes }
  it { should validate_presence_of :name }
  it { should validate_presence_of :location }
  it { should validate_presence_of :free_entrance_days }
end
