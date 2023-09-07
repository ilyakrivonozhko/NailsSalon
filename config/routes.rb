Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  namespace :api do
    resources :appointments, only: %i[index]
  end
  # root "articles#index"
end
