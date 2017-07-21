require 'rails_helper'

describe Attraction do
  it { should belong_to :park }
end
