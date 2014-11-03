class ContactMailer < ActionMailer::Base
  default from: "someone@bootcoder.com"
  default to: "bootcoder@gmail.com"

  def send_mail(user_info)
  	@body = user_info
  	mail(email: user_info.email, subject: "Profile MSG from #{user_info.name}")
  end
end
