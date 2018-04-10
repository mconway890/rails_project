class Activity < ApplicationRecord
  has_many :vacations
  has_many :users, through: :vacations

  scope :completed, -> { where(completed: true) }
end
