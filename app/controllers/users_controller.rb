class UsersController < ApplicationController
    before_action :current_user
    def show
        @user = User.find(params[:id])
    end 

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        log_in(@user)
        redirect_to user_path(@user)
    end

    def edit
        if logged_in?
            @user = @current_user
        else
            redirect_to login_path
        end
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        redirect_to user_path(@user)
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to new_user_path
    end

    private

    def user_params 
        params.require(:user).permit(:name, :user_name, :password)
    end
end
