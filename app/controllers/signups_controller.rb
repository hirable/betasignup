class SignupsController < ApplicationController
  def new
    @signup = Signup.new
  end

  def create
    @signup = Signup.new(params[:signup])
    if @signup.save
      flash[:failure] = nil
      flash[:success] = "Thanks! Got it. We'll notify you soon!"
      redirect_to root_path
    else
      flash[:success] = nil
      flash[:failure] = ""
      @signup.errors.full_messages.each do |msg|
        flash[:failure] = flash[:failure] + msg + ". "
      end
      flash[:failure] = flash[:failure] + "Try Again!"
      render 'new'
    end
  end
  
end
