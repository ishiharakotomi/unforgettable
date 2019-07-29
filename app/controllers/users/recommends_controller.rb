class Users::RecommendsController < ApplicationController
	before_action :authenticate_user!

	def index
		@theater = Theater.find(params[:theater_id])
		@review1 = @theater.reviews.where(review_type: 1).page(params[:page]).reverse_order.per(8)
	end
end