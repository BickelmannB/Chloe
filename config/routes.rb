Rails.application.routes.draw do
  root to: 'pages#home'
  get '/acceuil', to: "pages#acceuil"
  resources :profils, only: [:index, :show, :new, :create, :edit, :update]
  resources :formations, only: [:index, :show, :new, :create, :edit, :update]
  get '/contact', to: 'profils#contact'
  post '/contact', to: 'profils#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
