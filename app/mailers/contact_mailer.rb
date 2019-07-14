class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.contact_mail.subject
  #
  def contact_mail
    @contact = contact

ishihara.5103@gmail.com = "unforgettable"
    mail to: ENV['unforgettable'], subject:"contactがありました"
  end
end
