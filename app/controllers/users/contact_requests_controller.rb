class Users::ContactRequestsController < ApplicationController

	def confirm
        @request = ContactRequest.new(request_params)
      if @request.valid?
         render :action => 'confirm'
      else
         render :action => 'new'
      end
    end

    def create
        request = ContactRequest.new(request_params)
        request.is_confirmed = true
        request.save!
        redirect_to users_request_confirm_path(contact)
    end

    def done
        @request = ContactRequest.new(request_params)
     if params[:back]
        render :action => 'new'
     else
          ContactMailer.received_email(@request).deliver_now
          render :action => 'done'
      end
    end

    private
    def request_params
        params.require(:contact_request).permit(:nickename, :name, :name_kana, :email, :message, :responsible, :phonenumber, :postcode, :prefecture_name,:address_city, :address_building, :theater_url)
    end
end
