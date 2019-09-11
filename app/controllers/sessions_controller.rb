class SessionsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def create
        @user = User.find_by(username: params[:session][:username])

        if @user && @user.authenticate(params[:session][:password])
            session[:user_id] = @user.id
            render json: @user
        else
            render json: {
                error: "Invalid Credentials"
            }
        end

    end

    def get_current_user
        if logged_in?
            render json: @user
        else
            render json: {
                error: "Not logged in"
            }
        end
    end

    def destroy
    end
end
