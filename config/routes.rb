Rails.application.routes.draw do
  resources :pet_histories
  resources :pets
  resources :clients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pets#index"
end
