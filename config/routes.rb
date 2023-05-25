Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  root "categories#index"
  resources :venues
  resources :categories
  get '/dashboard', to: 'static_pages#dashboard'
end
