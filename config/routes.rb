Rails.application.routes.draw do
  resources :user_reviews, except: [:index]
  resources :dinner_guests, only: [:new, :create, :show, :delete]
  resources :dinner_parties
  resources :users, except: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/", to: "static#home"
end
