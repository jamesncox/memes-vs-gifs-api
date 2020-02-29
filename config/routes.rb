Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do

      resources :memes
      resources :gifs
      resources :users
      resources :captions
      resources :caption_joins

      # sessions CSRF-TOKEN route
      get '/auth-check' => 'sessions#auth_check'

      # /signup is my post fetch request route for signing up new user to users#create action
      post '/signup' => 'users#create'

      # /login is my post fetch requeset route for logging in existing user to sessions#create action
      post '/login' => 'sessions#create'

      # /logout is my post fetch request route for logging out of existing user's session, sessions#destroy
      # delete "/logout" => "sessions#destroy"
    end
  end

  # #sessions CSRF-TOKEN route
  # get '/api/v1/auth-check' => 'api/v1/sessions#auth_check'

  # # /ap/v1/signup is my post fetch request route for signing up new user to users#create action
  # post "/api/v1/signup" => "users#create"

  # # /api/v1/login is my post fetch requeset route for logging in existing user to sessions#create action
  # post "/api/v1/login" => "sessions#create"

  # # /api/v1/logout is my post fetch request route for logging out of existing user's session, sessions#destroy
  # # delete "/api/v1/logout" => "sessions#destroy"

  #  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
