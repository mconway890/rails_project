class Vacation < ApplicationRecord
  has_many :activities
  has_many :items
  has_many :users, through: :activities
  has_many :users, through: :items
end
