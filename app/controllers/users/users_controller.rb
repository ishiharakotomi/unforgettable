class Users::UsersController < ApplicationController
      before_action :authenticate_user!

	def show
		@user = User.find(params[:id])
        @reviewszero = Review.where(review_type: 0,user_id: current_user.id).page(params[:page]).per(2)
        @reviewsone = Review.where(review_type: 1,user_id: current_user.id).page(params[:page]).per(2)
	end

	def edit
		@user = User.find(current_user.id)
	end

    def update
        @user = User.find(current_user.id)
        user_params_hash = user_params
        if params[:user][:password].present?
            user_params_hash[:password] = params[:user][:password]
            if @user.update(user_params_hash)
                flash[:notice] = "編集しました"
                redirect_to root_path
            else
                render :edit
            end
        else
            if @user.update(user_params_hash)
                flash[:notice] = "編集しました"
                redirect_to users_user_path
            else
                render :edit
            end
        end
    end

    def destroy
        @user = User.find(current_user.id)
        @user.destroy
        flash[:notice] = "Sign out"
        redirect_to users_theaters_path
    end

    private
    def user_params
        params.require(:user).permit(:profile_image, :name, :name_kana, :nickname, :email)
    end

end