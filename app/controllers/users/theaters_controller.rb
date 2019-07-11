class Users::TheatersController < ApplicationController

	def index
    	@theaters = Theater.all
    	@theaters = Theater.page(params[:page]).reverse_order
	end

	def show
    	@theater = Theater.find(params[:id])
    	@reviews = @theater.reviews.where(review_type: 0)
        @review = Review.new
        @shops = @theater.reviews.where(review_type: 1)
        # @shop = Review.new
	end
end