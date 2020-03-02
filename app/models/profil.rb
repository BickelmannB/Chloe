class Profil < ApplicationRecord
  has_one_attached :photo
  has_many :contacts
end
