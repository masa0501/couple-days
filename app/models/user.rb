class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :albums
  has_many :events

  validates :nickname, presence: true
  validates :partner_nickname, presence: true
  validates :dating_day, presence: true
end
