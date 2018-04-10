class Item < ApplicationRecord
  has_many :vacations
  has_many :users, through: :vacations
end
