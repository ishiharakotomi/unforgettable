class Spendlike < ApplicationRecord

    belongs_to :review
   	belongs_to :user


	def liked_by?(user)
        spendlikes.where(user_id: user.id).exists?
    end
end
