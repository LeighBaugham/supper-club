Rails.application.routes.draw do
  resources :user_reviews
  resources :dinner_guests
  resources :dinner_parties
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
