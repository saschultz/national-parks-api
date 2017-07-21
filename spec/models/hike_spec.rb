require 'rails_helper'

describe Hike do
  it { should belong_to :park }
  it { should validate_presence_of :name }
  it { should validate_presence_of :miles }
  # it { should validate_presence_of :natural_wonders }
end
