class ProfilMailer < ApplicationMailer
  def contact(contact)
    @contact = contact
    mail(to: "#{@contact.email_contact}", subject: "Nouvelle demande d'information")
  end
end
