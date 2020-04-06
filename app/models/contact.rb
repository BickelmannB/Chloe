class Contact < ApplicationRecord
  validates :email, presence: true
  validates :telephone, presence: true
  validates :demande, presence: true
end
