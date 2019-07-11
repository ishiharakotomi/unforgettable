class Admins::TheatersController < ApplicationController
before_action :authenticate_admin!, only: [:index, :show, :new, :edit, :update, :create, :destroy]

    def index
    	@theaters = Theater.all
    	@theaters = Theater.page(params[:page]).reverse_order
    end

    def show
    	@theater = Theater.find(params[:id])
    end

	def new
		@theater = Theater.new
	end

	def edit
		@theater = Theater.find(params[:id])
	end

	def update
		@theater = Theater.find(params[:id])
		@theater.update(theater_params)
		redirect_to admins_theaters_path(@theater)
	end

	def create
		@theater = Theater.new(theater_params)
		@theater.save
		redirect_to admins_theaters_path
	end

	def destroy
		@theater = Theater.find(params[:id])
		@theater.destroy
		redirect_to admins_theaters_path
	end

	private
	def theater_params
		params.require(:theater).permit(:theater_image, :theater_name, :introduction, :postcode, :prefecture_name, :prefecture_code, :address_city, :address_street, :address_building, :phonenumber)
	end
end
