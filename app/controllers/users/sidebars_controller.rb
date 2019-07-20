class Users::SidebarsController < ApplicationController

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def index
		@user = current_user
        @theaterlikes = Theaterlike.where(user_id: @user.id)
	end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        flash[:notice] = "編集されました"
        redirect_to users_user_path(@user)
    end

    private
    def user_params
        params.require(:user).permit(:profile_image, :name, :name_kana, :nickname, :email)
    end

end
