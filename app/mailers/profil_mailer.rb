class ProfilMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.profil_mailer.contact.subject
  #
def contact
  @profil = params[:profil]
  @email = params[:email]
  @telephone = params[:telephone]
  @demande = params[:demande]
  mail(to: @profil.email, subject: "Nouvelle demande d'information")
end
end
