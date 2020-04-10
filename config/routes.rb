Rails.application.routes.draw do
  root to: 'pages#home'
  get '/acceuil', to: "pages#acceuil"
  resources :profils, only: [:index, :show, :edit, :update]
  resources :formations, only: [:index, :show]
  resources :contacts, only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
