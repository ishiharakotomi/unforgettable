class Admins::TheaterlikesController < ApplicationController

	def index
    	@theaters = Theater.all
    	@theaters = Theater.page(params[:page]).reverse_order
        @search = Theater.ransack(params[:q])
        @theaters = @search.result.reverse_order
	end

	def show
    	@theater = Theater.find(params[:id])
    	@review0 = @theater.reviews.where(review_type: 0)
        @review = Review.new
        @review1 = @theater.reviews.where(review_type: 1)
        @search = Theater.ransack(params[:q])
        @theaters = @search.result.reverse_order
	end

end
