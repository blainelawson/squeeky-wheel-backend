Rails.application.routes.draw do
  post "/login", :to => "sessions#create"
  namespace :api do
    namespace :v1 do
      resources :issues
      resources :users do
        resources :issues
      end
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
