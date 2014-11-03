class ContactMailer < ActionMailer::Base
  default from: "bootcoder@gmail.com"
  default to: "bootcoder@gmail.com"

  def send_email(user_info)
  	p "^" * 50
  	@body = user_info.body
  	mail(email: user_info.email, subject: "Profile MSG from #{user_info.name}")
  end
end
