class Users::ContactRequestsController < ApplicationController

	def confirm
        @contact_request = ContactRequest.find(params[:id])
      if @contact_request.valid?
         render :action => 'confirm'
      else
         render :action => 'new'
      end
    end

    def create
        @request = ContactRequest.new(request_params)
        @request.nickname = current_user.nickname
        @request.is_confirmed = true
        @request.save!
        redirect_to users_contact_request_confirm_path(@request)
    end

    def done
        @request = ContactRequest.find(params[:id])
      if params[:back]
         @contact = Contact.new
         @request = ContactRequest.new(request_params)
         render template: 'users/contacts/new'
      else
        ContactMailer.send_request(@request).deliver_now
        redirect_to root_path
      end
    end

    private
    def request_params
        params.require(:contact_request).permit(:name, :name_kana, :email, :responsible, :phonenumber, :postcode, :prefecture_name,:address_city, :address_building, :theater_url, :message)
    end
end
