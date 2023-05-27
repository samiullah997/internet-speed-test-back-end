Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "api/places", to: "api/places#index"
  post "api/internet_speed", to: "api/internet_speed#create"
end
