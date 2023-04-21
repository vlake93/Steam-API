  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # GET /about
  # Defines the root path route ("/")
  # root "articles#index"
Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    root 'devise/sessions#new'
  end
  # root to: "main#index"
  get "about", to: "about#index"
end
