class ContactMailer < ActionMailer::Base
  default from: "huntercanhas@gmail.com"
  default to: "bootcoder@gmail.com"

  def send_email(user_info)
  	@body = user_info
  	mail(email: user_info.email, subject: "Profile MSG from #{user_info.name}")
  end
end
