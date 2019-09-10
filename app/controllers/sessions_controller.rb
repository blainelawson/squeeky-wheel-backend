class SessionsController < ApplicationController
    skip_before_action :verify_authenticity_token
    
    def create
        byebug
    end

    def destroy
    end
end
