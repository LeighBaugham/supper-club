class SessionController
    def new
        render "login"
    end

    def create 
        #Log a user in by creating a new session
        #Store the user id in the session
        #Then redirect to the user show page
        #Otherwise render the login page with a error message

        @message = nil
        @user = User.find_by(user_name: params[:user_name])
        if @user && @user.password == params[:password]
            session[:user] = @user.id
            redirect_to user_path(@user)
        else
            @message = "Username or password do not match"
            render "login"
        end
    end

    def destroy
        #Log out by deleting the user value from the session
        session.delete :user
        #TODO
        #Maybe this will be a "good bye message" at some point?
        redirect_to "/"
    end
end