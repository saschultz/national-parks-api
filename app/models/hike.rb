class Hike < ApplicationRecord
  belongs_to :park
  validates(:name, presence: true)
end
