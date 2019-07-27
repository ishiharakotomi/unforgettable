class Spendlike < ApplicationRecord

    belongs_to :review
   	belongs_to :user
    paginates_per 6

end
