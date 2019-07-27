
class Users::ReviewsController < ApplicationController
	before_action :authenticate_user!

    def reviewlikes
        @user = User.find_by(id: params[:id])
        @reviewlikes = Reviewlike.where(user_id: @user.id)
    end

	def create
		@review = Review.new(review_params)
		@review.user_id = current_user.id
		@review.theater_id = params[:review][:theater_id]
	 if	@review.save
	 	flash[:notice] = "投稿されました"
		redirect_to users_theater_path(@review.theater_id)
	 else
	 	@search = Theater.ransack(params[:q])
        @theaters = @search.result.reverse_order
	 	@theater = Theater.find(params[:review][:theater_id])
    	@review0 = @theater.reviews.where(review_type: 0).page(params[:page]).reverse_order
        @review1 = @theater.reviews.where(review_type: 1).page(params[:page]).reverse_order
        render :template => "users/theaters/show"
	  end
	end

    def destroy
        @review = Review.find(params[:id])
        @review.destroy
        redirect_to users_theater_path(@review.theater)
	end

	private
	def review_params
		params.require(:review).permit(:title, :body, :review_type, :review_image)
	end
end