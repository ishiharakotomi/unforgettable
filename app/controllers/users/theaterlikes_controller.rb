class Users::TheaterlikesController < ApplicationController

    def theaterlikes
        @user = User.find_by(id: params[:id])
        @theaterlikes = Theaterlike.where(user_id: @user.id)
    end

    def create
        theater = Theater.find(params[:theater_id])
        theaterlikes = current_user.theaterlikes.new(theater_id: theater.id)
        theaterlikes.save!
        redirect_to users_theater_path(theater)
    end
    def destroy
    	theater = Theater.find(params[:theater_id])
        theaterlike = current_user.theaterlikes.find_by(theater_id: theater.id)
        theaterlike.destroy
        redirect_to users_theater_path(theater)
    end
end