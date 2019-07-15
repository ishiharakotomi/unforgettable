class Theater < ApplicationRecord

  has_many :reviews, dependent: :destroy
  has_many :theaterlikes

  attachment :theater_image

  include JpPrefecture
  jp_prefecture :prefecture_code

  def liked_by?(user)
      theaterlikes.where(user_id: user.id).exists?
  end

end