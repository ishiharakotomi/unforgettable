class Users::TheatersController < ApplicationController

	def index
        @search = Theater.ransack(params[:q])
        @theaters = @search.result.page(params[:page]).reverse_order
	end

	def show
    	@theater = Theater.find(params[:id])
    	@review0 = @theater.reviews.where(review_type: 0).page(params[:page]).reverse_order
        @review = Review.new
        @review1 = @theater.reviews.where(review_type: 1).page(params[:page]).reverse_order
        @search = Theater.ransack(params[:q])
        @theaters = @search.result.reverse_order
	end

    def about
    end
end