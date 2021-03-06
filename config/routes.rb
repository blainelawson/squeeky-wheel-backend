Rails.application.routes.draw do
  post "/login", :to => "sessions#create"
  get "/get_current_user", :to => "sessions#get_current_user"
  delete "/logout", :to => "sessions#destroy"

  namespace :api do
    namespace :v1 do
      resources :issues
      resources :users do
        get "/not_user_issues", :to => "issues#not_user_issues"
        patch "/add_user_issue", :to => "users#add_issue"
        patch "/delete_user_issue", :to => "users#delete_user_issue"
        resources :issues
      end
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
