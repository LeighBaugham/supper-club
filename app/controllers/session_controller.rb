class SessionController < ApplicationController
    def new
        if logged_in?
            redirect_to current_user
        else
            render "login"
        end
    end

    def create 
        #Log a user in by creating a new session
        #Store the user id in the session
        #Then redirect to the user show page
        #Otherwise render the login page with a error message

        @message = nil
        user = User.find_by(user_name: params[:user_name])
        
        if user && user.authenticate(params[:password])
            log_in(user)
            redirect_to user #user_path(@user)
        else
            @message = "Username or password do not match"
            render "login"
        end
    end

    def destroy
        #Log out by deleting the user value from the session
        session.delete :user_id
        #TODO
        #Maybe this will be a "good bye message" at some point?
        redirect_to "/"
    end
end