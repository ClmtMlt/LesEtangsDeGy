class Contact < ApplicationRecord
  validates :email, presence: true, allow_blank: false
  validates :description, presence: true, allow_blank: false
end
