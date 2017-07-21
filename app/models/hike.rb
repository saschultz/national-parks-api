class Attraction < ApplicationRecord
  belongs_to :park
  validates(:hikes, :wildlife, :natural_wonders, presence: true)
end
