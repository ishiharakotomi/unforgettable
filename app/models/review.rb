class Review < ApplicationRecord

	validates :title, presence: true, length: { maximum: 1000 }
	validates :body, presence: true, length: { maximum: 1000 }

	belongs_to :user
	belongs_to :theater
	has_many :reviewlikes, :dependent => :destroy
	has_many :spendlikes, :dependent => :destroy
	attachment :review_image


	def review_liked_by?(user)
        reviewlikes.where(user_id: user.id).exists?
    end

    def spend_liked_by?(user)
        spendlikes.where(user_id: user.id).exists?
    end
end
