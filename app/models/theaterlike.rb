class Theaterlike < ApplicationRecord

	belongs_to :theater
	belongs_to :user
	paginates_per 6

end
