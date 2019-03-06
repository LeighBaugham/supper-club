class UsersController < ApplicationController
    before_action :current_user
    def show
        @user = User.find(params[:id])
        render "show"
    end 

    def new
        @user = User.new
        render "new"
    end

    def create
        @user = User.new(user_params)
        if @user.valid?
            log_in(@user)
            redirect_to user_path(@user)
        else
            flash[:errors] = @user.errors
            render "new"
        end
    end

    def edit
        @user = User.find(params[:id])
        if logged_in?
            render "edit"
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
