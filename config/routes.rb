Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :user_activities
      resources :activities
      resources :users
      post '/selected_activity', to: 'activities#find_or_create_activity'
      get '/current_user', to: "auth#show"
      post '/login', to: 'auth#create'
      post '/user_activities/:id', to: 'user_activities#update'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
