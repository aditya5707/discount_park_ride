class HomesController < ApplicationController

  def index

  end

  def send_mail
    @user = User.new(:email => params[:email])
    if @user.valid?
      RequestMailer.user_request(params[:email]).deliver
      redirect_to root_path, :notice => "Your Request Submitted successfully."
    else
      redirect_to root_path, :notice => "Please enter valid email."
    end
  end
  end