class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  attachment :profile_image


  has_many :theaterlikes
  has_many :reviewlikes
  has_many :spendlikes
  has_many :reviews, dependent: :destroy



end
