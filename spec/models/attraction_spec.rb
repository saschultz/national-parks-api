require 'rails_helper'

describe Attraction do
  it { should belong_to :park }
  it { should validate_presence_of :hikes }
  it { should validate_presence_of :wildlife }
end
