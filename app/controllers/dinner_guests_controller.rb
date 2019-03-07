class DinnerGuestsController < ApplicationController
    def show
        @dinner_guest = DinnerGuest.find(params[:id])
    end

    def new
        @dinner_guest = DinnerGuest.new 
    end

    def create
        if logged_in?
            @user = current_user
            @dinner_guest = DinnerGuest.create(user_id: @user.id, dinner_party_id: params[:dinner_party_id])
            redirect_to dinner_guest_path(@dinner_guest)
        else
            flash[:error] = "You must login before attending a party!"
            redirect_to login_path
        end
    end

    def destroy
        @dinner_guest = DinnerGuest.find(params[:id])
        @dinner_guest.destroy 
        redirect_to login_path
    end

    private
    def dg_params
        params.permit(:dinner_party_id)
    end
end
