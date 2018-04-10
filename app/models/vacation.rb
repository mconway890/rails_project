class Vacation < ApplicationRecord
  belongs_to :user
  belongs_to :activity
  belongs_to :item  
end
