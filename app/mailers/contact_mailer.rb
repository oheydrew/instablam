class ContactMailer < ApplicationMailer
  def send_email
    sender = ENV.fetch('MAILGUN_SENDER_ADDRESS')
    form_params = params[:contact]
    @name = form_params[:name]
    @message = form_params[:message]

    mail(to: sender)
  end

end
