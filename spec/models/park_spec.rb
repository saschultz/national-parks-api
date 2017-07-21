require 'rails_helper'

describe Park do
  it { should have_many :attractions }
  it { should validate_presence_of :name }
end
