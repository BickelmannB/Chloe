class ProfilMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.profil_mailer.contact.subject
  #
  def contact
    @profil = params[:profil] # Instance variable => available in view
    mail(to: @profil.email, subject: 'Welcome to Le Wagon')
    # This will render a view in `app/views/user_mailer`!
  end
end
