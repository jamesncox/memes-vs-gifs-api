Rails.application.routes.draw do
  resources :gifs
  resources :memes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do

      resources :users do

      end

    end
  end

  get "/auth" => 'sessions#auth'
  get "/signup" => "accounts#new", as: "signup"
  post "/signup" => "accounts#create"
  get "/login" => "sessions#new", as: "login"
  post "/login" => "sessions#create"
  delete "/logout" => "sessions#destroy"

end
