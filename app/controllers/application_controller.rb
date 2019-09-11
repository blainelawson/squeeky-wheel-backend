class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception    
    
    helpers do
        def current_user
            # currently a mocked version of being logged-in
            User.find(session[:user_id])
        end

        def logged_in?
            !!current_user
        end
    end
end
