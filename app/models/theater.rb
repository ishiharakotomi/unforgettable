class Theater < ApplicationRecord

	validates :theater_name, presence: true
  validates :postcode, presence: true
  validates :address_city, presence: true
  validates :address_street, presence: true
  validates :prefecture_name, presence: true

  has_many :reviews, dependent: :destroy
  has_many :theaterlikes, :dependent => :destroy

  attachment :theater_image

  include JpPrefecture
  jp_prefecture :prefecture_name

  def liked_by?(user)
      theaterlikes.where(user_id: user.id).exists?
  end

end