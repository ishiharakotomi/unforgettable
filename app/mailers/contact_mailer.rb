class ContactMailer < ApplicationMailer

  def send_contact(contact)
      @contact = contact
      mail(to: ENV['UNFORGETTABLE'],  subject: "#{@contact.name}様よりメッセージが届きました")
  end

  def send_request(request)
      @request = request
      mail(to: ENV['UNFORGETTABLE'], subject: "#{@request.name}様よりメッセージが届きました")
  end
end