Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :user_activities
      resources :activities
      resources :users
      # , only: [:create]
      get '/current_user', to: "auth#show"
      post '/login', to: 'auth#create'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
