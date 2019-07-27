class Contact < ApplicationRecord

# attr_accessor :nickname, :name, :name_kana, :email, :message

  validates :nickname, presence: true, length: { maximum: 20 }
  validates :name, presence: true, length: { maximum: 20 }
  validates :name_kana, presence: true, length: { maximum: 20 }
  validates :email, presence: true, length: { maximum: 30 }
  validates :message, presence: true, length: { maximum: 200 }

end