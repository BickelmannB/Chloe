class Contact < ApplicationRecord
  validates :email, presence: true, email: true
  validates :telephone, presence: true, numericality: { only_integer: true }
  validates :demande, presence: true
end
