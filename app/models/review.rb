class Review < ApplicationRecord
	belongs_to :user
	belongs_to :theater

	attachment :review_image
end
