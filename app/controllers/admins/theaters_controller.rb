class Admins::TheatersController < ApplicationController
before_action :authenticate_admin!, only: [:index, :show, :new, :edit, :update, :create, :destroy]

    def index
    	@search = Theater.ransack(params[:q])
    	@theaters = @search.result.page(params[:page]).reverse_order
    end

    def show
    	@theater = Theater.find(params[:id])
    	@review0 = @theater.reviews.where(review_type: 0)
        @review = Review.new
        @review1 = @theater.reviews.where(review_type: 1)
        @search = Theater.ransack(params[:q])
        @theaters = @search.result.reverse_order
        @user = Review.find(params[:id]).user
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
		if @theater.save
			flash[:notice] = "編集しました"
			redirect_to admins_theaters_path(@theater)
		else
			render 'edit'
		end
	end

	def create
		@theater = Theater.new(theater_params)
		if @theater.save
			flash[:notice] = "投稿しました"
			redirect_to admins_theaters_path
		else
			render 'new'
		end
	end

	def destroy
		@theater = Theater.find(params[:id])
		@theater.destroy
		redirect_to admins_theaters_path
	end

	private
	def theater_params
		params.require(:theater).permit(:theater_image, :theater_name, :introduction, :postcode, :prefecture_name, :prefecture_code, :address_city, :address_street, :address_building, :phonenumber, :theater_url)
	end
end
