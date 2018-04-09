class User < ApplicationRecord
  has_many :activities
  has_many :items
  has_many :vacations, through: :activities
  has_many :vacations, through: :items
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :omniauthable, :validatable

  def self.find_for_oauth(auth)
     find_or_create_by(uid: auth.uid, provider: auth.provider)
  end
end
