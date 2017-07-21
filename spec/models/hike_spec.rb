require 'rails_helper'

describe Hike do
  it { should belong_to :park }
  # it { should validate_presence_of :hikes }
  # it { should validate_presence_of :wildlife }
  # it { should validate_presence_of :natural_wonders }
end
