class SignupsController < ApplicationController
  def new
    @signup = Signup.new
  end

  def create
    @signup = Signup.new(params[:signup])
    if @signup.save
      flash[:success] = "Thanks! Got it. We'll notify you soon!"
      redirect_to :back
    else
      render 'new'
    end
  end
  
end
