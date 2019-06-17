Rails.application.routes.draw do
  # resources :posts
  # resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do 
    namespace :v1 do 
      post '/signup', to: "users#signup"
      post '/login', to: "sessions#login"
      get '/posts', to: "posts#index"
    end
  end

end
