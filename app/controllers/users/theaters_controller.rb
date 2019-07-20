class Users::TheatersController < ApplicationController

	def index
    	@theaters = Theater.all
    	@theaters = Theater.page(params[:page]).reverse_order
	end

	def show
    	@theater = Theater.find(params[:id])
    	@review0 = @theater.reviews.where(review_type: 0)
        @review = Review.new
        @review1 = @theater.reviews.where(review_type: 1)
	end
end