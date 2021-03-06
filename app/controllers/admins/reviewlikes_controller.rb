class Admins::ReviewlikesController < ApplicationController

	def create
        review = Review.find(params[:review_id])
        reviewlikes = current_user.reviewlikes.new(review_id: review.id)
        reviewlikes.save!
        redirect_to users_theater_path(review.theater)
    end
    def destroy
    	review = Review.find(params[:review_id])
        reviewlike = current_user.reviewlikes.find_by(review_id: review.id)
        reviewlike.destroy
        redirect_to users_theater_path(review.theater)
        end

end
