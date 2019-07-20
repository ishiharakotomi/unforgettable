class Contact < ApplicationRecord

# attr_accessor :nickname, :name, :name_kana, :email, :message

  validates :nickname, presence: true, length: { maximum: 20 }
  validates :name, presence: true, length: { maximum: 20 }
  validates :name_kana, presence: true, length: { maximum: 20 }
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 30 }
  # validates :email, presence: true, length: { maximum: 30 },
  #                   format: { with: VALID_EMAIL_REGEX }
  validates :message, presence: true, length: { maximum: 200 }

end