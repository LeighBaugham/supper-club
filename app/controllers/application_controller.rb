class ApplicationController < ActionController::Base

    def log_in(user)
        session[:user_id] = user.id
    end

    def current_user
        if session[:user_id]
            @current_user ||= User.find_by(id: session[:user_id])
        end
    end

    def logged_in? #not sure if we need this, but why not
        !current_user.nil?
    end
end
