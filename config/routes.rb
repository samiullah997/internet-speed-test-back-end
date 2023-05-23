Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "api/places", to: "api/places#index"
  get "api/internet-speed-new", to: "api/internet_speeds#new"
end
