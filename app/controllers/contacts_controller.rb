class ContactsController < ApplicationController
  def new
    @contact = Contact.new
    @profil = Profil.where(name: "Annick")
  end

  def create
    @contact = Contact.new(contact_params)
    @profil = Profil.where(name: "Annick")
    if @contact.save
      ProfilMailer.contact(@contact).deliver_now
      flash[:success] = "Votre demande à bien été transmise,
       nous vous recontacterons dès que possible"
      redirect_to acceuil_path
    else
      flash[:error] = "Un problème est survenu, merci de réessayer."
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:email, :email2, :telephone, :demande)
  end
end
