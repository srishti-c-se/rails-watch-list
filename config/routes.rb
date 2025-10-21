Rails.application.routes.draw do
  get 'lists/index'
  get 'lists/show'
  get 'lists/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  # Read all
  get "lists", to: "lists#index"
  # Create
  get "lists/new", to: "lists#new",  as: :new_list
  post "lists", to: "lists#create"
  # Read one - The `show` route needs to be *after* `new` route.
  get "lists/:id", to: "lists#show", as: :list
end
