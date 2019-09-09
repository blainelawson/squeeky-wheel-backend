class Api::V1::IssuesController < ApplicationController
    def index
        @issues = Issue.all
        render json: @issues
    end

    def show
        @issue = Issue.find_by(id: params[:id])
        render json: @issue
    end
end
