class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ProfilMailer.contact(@contact).deliver_now
      flash[:success] = "Votre demande à bien été transmise,
       nous vous recontacterons dès que possible."
      redirect_to acceuil_path
    else
      flash[:error] = "Un problème est survenu, merci de réessayer."
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:email, :telephone, :demande)
  end
end
