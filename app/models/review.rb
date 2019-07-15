class Review < ApplicationRecord
	belongs_to :user
	belongs_to :theater
	has_many :reviewlikes
	has_many :spendlikes

	attachment :review_image


	def liked_by?(user)
        reviewlikes.where(user_id: user.id).exists?
        spendlikes.where(user_id: user.id).exists?
    end
    # def liked_by?(user)
    # 	spendlikes.where(user_id: user.id).exists?
    # end
end
