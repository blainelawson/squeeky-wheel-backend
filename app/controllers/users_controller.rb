class Api::V1::UsersController < ApplicationController
    def add_issue
        byebug
        @issue = Issue.find_by(id: params[:issueId])
        
        if @issue && !my_current_user.issues.include?(@issue)
            my_current_user.issues << @issue

            my_current_user.save
            render json: @issue
        else 
            render json: {
                error: "There was an issue with the issue"
            }
        end
    end

    def delete_user_issue
        @issue = Issue.find_by(id: params[:issueId])

        if @issue && my_current_user.issues.include?(@issue)
            my_current_user.issues.delete(@issue)

            render json: @issue
        else
            render json: {
                error: "Something went TERRIBLY wrong. Abandon hope."
            }
        end
    end
end
