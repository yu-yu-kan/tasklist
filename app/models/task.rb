class Task < ApplicationRecord
  validates :todo, presence: true, length: { maximum: 255 }
end
