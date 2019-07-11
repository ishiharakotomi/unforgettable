class Theater < ApplicationRecord

  has_many :reviews, dependent: :destroy

  attachment :theater_image

  include JpPrefecture
  jp_prefecture :prefecture_code

end