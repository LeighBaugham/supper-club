class UsersController < ApplicationController
<<<<<<< HEAD
    
=======

    def show
        @user = User.find(params[:id])
    end 

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        redirect_to user_path(@user)
    end

    def edit
        @user = User.find(params[:id])
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
        params.require(:user).permit(:name, :user_name, :password_digest)
    end
>>>>>>> 898209c939b68d87d0466ee7372fa36b44ab031d
end
