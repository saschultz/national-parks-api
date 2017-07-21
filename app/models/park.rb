class Park < ApplicationRecord
  has_many :attractions, dependent: :destroy
  validates(:name, :location, presence: true)
end
