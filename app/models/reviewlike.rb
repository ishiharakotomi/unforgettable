class Reviewlike < ApplicationRecord

  belongs_to :review
  belongs_to :user

end
