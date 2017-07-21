class Park < ApplicationRecord
  has_many :attractions, dependent: :destroy
end
