class Admins::ReviewsController < ApplicationController

    def create
		@review = Review.new(review_params)
		@review.user_id = current_user.id
		@review.theater_id = params[:review][:theater_id]
		@review.save!
		redirect_to admins_theater_path(@review.theater_id)
	end

    def destroy
        @review = Review.find(params[:id])
        @review.destroy
        redirect_to admins_theater_path(@review.theater)
	end

	private
	def review_params
		params.require(:review).permit(:title, :body, :review_type, :review_image)
	end
end
