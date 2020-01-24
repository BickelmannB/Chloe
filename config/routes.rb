Rails.application.routes.draw do
  root to: 'pages#home'
  get '/acceuil', to: "pages#acceuil"
  resources :profils, only: [:index, :show]
  resources :formations, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
