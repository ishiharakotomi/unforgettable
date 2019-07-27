class ContactRequest < ApplicationRecord

	validates :email, presence: true
    validates :message, presence: true, presence: true
    validates :name, presence: true
    validates :name_kana, presence: true

end
