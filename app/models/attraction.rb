class Attraction < ApplicationRecord
  belongs_to :park
  validates(:hikes, :wildlife, presence: true)
end
