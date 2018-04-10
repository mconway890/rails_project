class User < ApplicationRecord
  has_many :vacations
  has_many :activities, through: :vacations
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:twitter]

  def self.find_for_oauth(auth)
     find_or_create_by(uid: auth.uid, provider: auth.provider)
  end
end
