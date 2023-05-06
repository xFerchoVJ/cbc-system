Rails.application.routes.draw do
  root 'pages#home'
  resources :houses
  get '/user/:id', to: 'users#destroy', as: :user_delete
  devise_for :admins
  devise_for :users
  get '/admin/dashboard', to: "pages#dashboard"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
