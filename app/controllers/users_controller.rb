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
            @user.save
            log_in(@user)
            redirect_to user_path(@user)
        else
            flash[:error] = @user.errors.full_messages.join(" ")
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
        if @user.update(user_params)
            redirect_to user_path(@user)
        else
            flash[:error] = @user.errors.full_messages.join(" ")
            render "edit"
        end
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to new_user_path
    end

    def history
        @user = User.find(params[:id])
        render "history"
    end

    private

    def user_params 
        params.require(:user).permit(:name, :user_name, :password)
    end
end
