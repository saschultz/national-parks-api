class Park < ApplicationRecord
  has_many :hikes, dependent: :destroy
  validates(:name, :location, :free_entrance_days, presence: true)

  def self.search(input)
    self.find_by(location: input)
  end

  def self.random
    self.all[rand(0..self.count)]
  end

  scope :most_hikes, -> {(
    select("parks.id, parks.name, count(hikes.id) as hikes_count")
    .joins(:hikes)
    .group('parks.id')
    .order('hikes_count DESC')
    .limit(3)
    )}
end
