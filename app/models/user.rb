class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :nickname, presence: true
  validates :name, presence: true
  validates :name_kana, presence: true
  validates :email, presence: true

  paginates_per 6

  attachment :profile_image

  has_many :theaterlikes
  has_many :reviewlikes
  has_many :spendlikes
  has_many :reviews, dependent: :destroy

  acts_as_paranoid

end