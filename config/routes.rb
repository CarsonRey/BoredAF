Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :user_activities
      resources :activities
      resources :users
      # , only: [:create]
      post '/selected_activity', to: 'activities#find_or_create_activity'
      get '/current_user', to: "auth#show"
      post '/login', to: 'auth#create'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
