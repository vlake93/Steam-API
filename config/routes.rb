  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # GET /about
  # Defines the root path route ("/")
  # root "articles#index"
Rails.application.routes.draw do
  devise_for :users

   devise_scope :user do
        authenticated :user do
        root :to => 'user#index', as: :authenticated_root
      end
      unauthenticated :user do
        root :to => 'devise/sessions#new', as: :unauthenticated_root
      end
  end
  # root to: "main#index"
  get "about", to: "about#index"
end
