class Users::TheatersController < ApplicationController
	def index
    	@theaters = Theater.all
    	@theaters = Theater.page(params[:page]).reverse_order
	end

	def show
    	@theater = Theater.find(params[:id])
	end
end
