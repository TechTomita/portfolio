class Contact < ApplicationRecord
    validates :neme, presence: true
    validates :email, presence: true
    validates :message, presence: true
end