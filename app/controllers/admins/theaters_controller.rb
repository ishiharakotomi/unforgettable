class Admins::TheatersController < ApplicationController

    def index
    	@theaters = Theater.all
    	@theaters = Theater.page(params[:page]).reverse_order
    end

    def show
    end

	def new
		@theater = Theater.new
	end

	def edit
		@theater = Theater.find(params[:id])
	end

	def create
		theater = Theater.new(theater_params)
		theater.save
		redirect_to admins_theaters_path
	end

	def update
		theater = Theater.find(params[:id])
	end

	private
	def theater_params
		params.require(:theater).permit(:theater_image, :theater_name, :introduction, :postcode, :prefecture_name, :address_city, :address_street, :address_building, :phonenumber)
	end
end
