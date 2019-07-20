class Users::SpendlikesController < ApplicationController

    def create
    	review = Review.find(params[:review_id])
    	spendlike = current_user.spendlikes.new(review_id: review.id)
        spendlike.save!
        redirect_to users_theater_path(spendlike.review.theater)
    end

    def destroy
    	spendlike = Spendlike.find(params[:id])
    	theater = spendlike.review.theater
        spendlike.destroy
        redirect_to users_theater_path(theater)
        end
end