class UsersController < ApplicationController
    def add_issue
        @issue = Issue.find_by(id: params[:issueId])
        # byebug
        if @issue && !my_current_user.issues.include?(@issue)
            my_current_user.issues << @issue
            # byebug
            my_current_user.save
            render json: @issue
        else 
            render json: {
                error: "There was an issue with the issue"
            }
        end
    end
end
