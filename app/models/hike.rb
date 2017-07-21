class Hike < ApplicationRecord
  belongs_to :park
  validates(:name, :miles, presence: true)
end
