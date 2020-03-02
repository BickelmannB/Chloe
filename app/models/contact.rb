class Contact < ApplicationRecord
  belongs_to :profil
  after_save :send_mail
private

def send_mail
  @profil = Profil.where(name: "Annick")
  mail(to: @profil.email, subject: "Nouvelle demande d'information")
end
end
