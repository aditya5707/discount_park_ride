class RequestMailer < ActionMailer::Base
  #default from: "from@example.com"

  def user_request(email)
    @email = email

    mail(:to => "to@example.com", :from => "from@example.com", :subject => "Application Request.")
    #mail(:to => "alex@discountparkandride.com", :from => "pansingh@weboniselab.com", :subject => "Application Request.")
  end

end
