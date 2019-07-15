class Spendlike < ApplicationRecord

    belongs_to :review

	def liked_by?(user)
        spendlikes.where(user_id: user.id).exists?
    end
end
