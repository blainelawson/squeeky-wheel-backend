class UsersController < ApplicationController
    def add_issue
        byebug
        @issue = Issue.find_by(id: params[:issueId])

        if @issue
            # byebug
            my_current_user.issues << @issue
            render json: @issue
        else 
            render json: {
                error: "There was an issue with the issue"
            }
        end
    end
end
