ActionMailer::Base.smtp_settings = {  
      :address              => "smtp.gmail.com",  
      :port                 => 587,  
      :domain               => "bootcoder.herokuapp.com",  
     :user_name            => "bootcoder@gmail.com", #Your user name
      :password             => "htcrvinc1020", # Your password
      :authentication       => "plain",  
      :enable_starttls_auto => true  
   }

   