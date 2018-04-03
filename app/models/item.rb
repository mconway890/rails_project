class Item < ApplicationRecord
  belongs_to :vacation
  belongs_to :user
end
