class WelcomeController < ApplicationController

  def index
    @enquiry = Enquiry.new
  end

  def enquiry
    @enquiry = Enquiry.new(params[:enquiry])
    if @enquiry.save
      EnquiryMailer.enquiry_email(@enquiry).deliver
      flash[:alert] = "Your enquiry has been successfully sent. We will be in contact shortly."
    else
      flash[:alert] = "There was a problem. Please try again."
    end
    redirect_to :action => "index"
  end

end
