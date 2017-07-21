class Attraction < ApplicationRecord
  belongs_to :park
  validates(:hikes, presence: true)
end
