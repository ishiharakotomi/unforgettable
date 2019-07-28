class Users::SidebarsController < ApplicationController

	def index
       @theaterlikes = current_user.theaterlikes.order(id: "DESC").limit(3)
       @reviewlikes = current_user.reviewlikes.order(id: "DESC").limit(2)
       @spendlikes= current_user.spendlikes.order(id: "DESC").limit(2)
	end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        redirect_to users_sidebar_path(@user)
    end

    private
    def user_params
        params.require(:user).permit(:profile_image, :name, :name_kana, :nickname, :email)
    end

end