class EnquiryMailer < ActionMailer::Base
  default from: "mail@ipssolutions.com.au"

  def enquiry_email(enquiry)
    @enquiry = enquiry
    mail(:to => "mail@ipssolutions.com.au", :subject => "Enquiry from Mobile Website")
  end

end
