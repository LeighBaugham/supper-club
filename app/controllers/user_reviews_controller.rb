class UserReviewsController < ApplicationController

    def show
        @user_review = UserReview.find(params[:id])
    end

    def new
        @dinner_guest = DinnerGuest.find(params[:dinner_guest_id])   
        @user_review = UserReview.new
    end

    def create 
        
        @user_review = UserReview.create(review_params)
        redirect_to user_review_path(@user_review)
    end

 

    def destroy
            @user = current_user
            @user_review = UserReview.find(params[:id])
            @user_review.destroy 
            redirect_to user_path(@user)
        end
    
private
def review_params
    params.require(:user_review).permit(:dinner_guest_id, :rating, :review_text)
end
 
end
