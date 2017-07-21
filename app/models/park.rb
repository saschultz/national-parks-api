class Park < ApplicationRecord
  has_many :attractions, dependent: :destroy
  validates(:name, :location, :free_entrance_days, presence: true)
end
