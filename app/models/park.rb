class Park < ApplicationRecord
  has_many :hikes, dependent: :destroy
  validates(:name, :location, :free_entrance_days, presence: true)

  def self.search(input)
    self.find_by(location: input)
  end
end
