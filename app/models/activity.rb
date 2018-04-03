class Activity < ApplicationRecord
  belongs_to :vacation
  belongs_to :user

  scope :completed, -> { where(completed: true) }
end
