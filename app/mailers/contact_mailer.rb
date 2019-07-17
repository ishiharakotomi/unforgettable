class ContactMailer < ApplicationMailer

	default to: 'ishihara.5103@gmail.com'

  def send_contact(contact)
      @contact = contact
      mail(to: @contact.email, subject: "#{@contact.name}様よりメッセージが届きました")
  end

  def send_request(request)
      @request = request
      mail(to: @request.email, subject: "#{@request.name}様よりメッセージが届きました")
  end
end