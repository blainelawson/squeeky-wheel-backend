class Api::V1::IssuesController < ApplicationController
    def index
        if !params[:user_id]
            @issues = Issue.all
            render json: @issues
        else

            @issues = User.find_by(id: params[:user_id]).issues
            render json: @issues
        end
    end

    def show
        @issue = Issue.find_by(id: params[:id])
        render json: @issue
    end
end
