class Users::ContactsController < ApplicationController
    before_action :authenticate_user!

    def new
        @contact = Contact.new
        @request = ContactRequest.new
    end

    def confirm
        @contact = Contact.find(params[:id])
    end

    def create
        @contact = Contact.new(contact_params)
        @request = ContactRequest.new
        @contact.nickname = current_user.nickname
        if @contact.save
           redirect_to users_contact_confirm_path(@contact)
        else
            render 'new'
  end
    end

    def done
        @contact = Contact.find(params[:id])
     if params[:back]
        @contact = Contact.new(contact_params)
        @request = ContactRequest.new
        render :action => 'new'
     else
        ContactMailer.send_contact(@contact).deliver_now
        @contact.is_confirmed = true
        @contact.save!
        redirect_to root_path
     end
    end

    private
    def contact_params
        params.require(:contact).permit(:name, :name_kana, :email, :message)
    end
end