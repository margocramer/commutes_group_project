class ReviewMailer < ApplicationMailer
  default from: 'GettingSquirrely@weird.com'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.review_mailer.receipt.subject



  def receipt
    mail(
    to: "smnrwebster5@gmail.com",
    subject: "New for review for your commute"
    )
  end
end
