class HomesController < ApplicationController

  def index

  end

  def send_mail
    RequestMailer.user_request(params[:email]).deliver
    redirect_to root_path, :notice => "Your Request Submitted successfully."
  end

end
