Rails.application.routes.draw do
  resources :houses
  devise_for :admins
  devise_for :users
  root 'pages#home'
  get '/admin/dashboard', to: "pages#dashboard"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
