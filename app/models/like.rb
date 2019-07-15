class Like < ApplicationRecord
	belongs_to :review
	belongs_to :theater
	belongs_to :user
end
