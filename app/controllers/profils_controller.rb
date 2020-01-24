class ProfilsController < ApplicationController
  def index
    @profils = Profil.all
  end

  def new
    @profil = Profil.new
  end

  def create
    @profil = Profil.create(profil_params)
  end

  def show
    @profil = Profil.find(params[:id])
  end

  def edit
    @profil = Profil.find(params[:id])
  end

  def update
    @profil = Profil.find(params[:id])
    @profil.update(profil_params)
  end

  def destroy
    @profil = Profil.find(params[:id])
    @profil.destroy
  end
end

private

def profil_params
  params.require(:profil).permit(:name, :description, :photo)
end
