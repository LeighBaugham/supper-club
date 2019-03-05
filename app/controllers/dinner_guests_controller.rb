class DinnerGuestsController < ApplicationController

    def show
        @dinner_guest = DinnerGuest.find(params[:id])
    end

    def new
        @dinner_guest = DinnerGuest.new 
    end

    def create
        @dinner_guest = DinnerGuest.find(params[:id])
        @dinner_guest.create(dg_params)
        redirect_to dinner_guest_path(@dinner_guest)
    end

    def destroy
        @dinner_guest = DinnerGuest.find(params[:id])
        @dinner_guest.destroy 
        redirect_to login_path
    end

    private
    def dg_params
        params.require(:dinner_guest).permit(:user_id, :dinner_party_id)
    end
end
