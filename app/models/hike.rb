class Hike < ApplicationRecord
  belongs_to :park
  validates(:name, :miles, :difficulty, presence: true)
end
