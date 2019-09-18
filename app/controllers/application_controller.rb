class ApplicationController < ActionController::API
    include ::ActionController::Cookies
    
        def my_current_user
            User.find_by(id: session[:user_id])
        end

        def logged_in?
            !!my_current_user
        end
end
