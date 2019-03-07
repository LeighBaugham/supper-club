Rails.application.routes.draw do
  
  resources :user_reviews, except: [:index]
  resources :dinner_guests, only: [:new, :create, :show, :delete] 

  resources :dinner_parties
  resources :users, except: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "static#home"
  get "/login" , to: "session#new"
  post "/login", to: "session#create"
  get "/logout" , to: "session#destroy"
  get "/user/:id/partyhistory", to: "users#history", as: :user_history
end
