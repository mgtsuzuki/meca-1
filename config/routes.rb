Rails.application.routes.draw do
  resources :complementos
  resources :premios
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: "dashboard#index"
  resources :users, only: [ :index ] do
    resources :complementos
  end
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
