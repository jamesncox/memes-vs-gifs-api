Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      
      resources :gifs do
        # resources :captions
      end
      
      resources :memes do
        # resources :captions
      end

      resources :users do

      end

      resources :captions
      # resources :caption_joins
      post "/saved-memes" => "caption_joins#create"
    end
  end

  get "/auth" => 'sessions#auth'
  get "/signup" => "accounts#new", as: "signup"
  post "/signup" => "accounts#create"
  get "/login" => "sessions#new", as: "login"
  post "/login" => "sessions#create"
  delete "/logout" => "sessions#destroy"

   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
