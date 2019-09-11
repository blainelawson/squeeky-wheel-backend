class ApplicationController < ActionController::Base
    include ::ActionController::Cookies

    protect_from_forgery with: :exception    
    
        def current_user
            # byebug
            User.find_by(id: session[:user_id])
        end

        def logged_in?
            !!current_user
        end
end
