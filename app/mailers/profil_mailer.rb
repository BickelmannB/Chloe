class ProfilMailer < ApplicationMailer
  def contact(contact)
    @contact = contact
    @profil = Profil.where(name: "Annick")
    mail(to: "#{@profil.name} <#{@profil.email}>", subject: "Nouvelle demande d'information")
  end
end
