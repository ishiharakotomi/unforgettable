class Users::ContactsController < ApplicationController
    def new
        @contact = Contact.new
    end

    def create
        @contact = Contact.new(contact_params)
     if @contact.save
        ContactMailer.contact_mail(@contact).deliver
        flash[:success] = '送信されました'
        redirect_to users_theaters_path
   else
        render :new
    end
  end

    private
    def contact_params
        params.require(:contact).permit(:message_type, :nickename, :name, :name_kana, :email, :message)
    end
end