class Park < ApplicationRecord
  has_many :attractions, dependent: :destroy
  validates(:name, presence: true)
end
