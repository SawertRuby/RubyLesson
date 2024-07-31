class UsersController < ApplicationController
    before_action :authenticate_user_auth!
    def index
      @user = User.all
    end
  
    def show
      @user = User.find(params[:id])
    end
  
end
