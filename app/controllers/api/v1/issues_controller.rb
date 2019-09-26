require 'pry'

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

    def not_user_issues
        @issues = Issue.all
        @user = User.find_by(id: params[:user_id])
        @issues = @issues.select {|issue| !@user.issues.include?(issue) }
        render json: @issues
    end

    def show
        @issue = Issue.find_by(id: params[:id])
        render json: @issue
    end
end
