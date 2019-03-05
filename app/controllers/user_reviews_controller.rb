class UserReviewsController < ApplicationController

    def show
        @user_review = UserReview.find(params[:id])
    end

    def new
        @user_review = UserReview.new
    end

    def create 
        if logged_in?
            current_user
        @user_review = UserReview.find(params[:id])
        @user_review.create(review_params)
        redirect_to user_review_path(@user_review)
        else 
            redirect_to login_path
        end
    end

    def edit 
        @user_review = UserReview.find(params[:id])
    end

    def update
        @user_review = UserReview.find(params[:id])
        @user_review.update(review_params)
        redirect_to user_review_path(@user_review)
    end

    def destroy
        if logged_in?
            current_user
            @user_review = UserReview.find(params[:id])
            @user_review.destroy 
            redirect_to user_path(@user.id)
        end


    private
    def review_params
        params.require(:user_review).permit(:review_text, :dinner_guest_id, :rating)
    end
end
