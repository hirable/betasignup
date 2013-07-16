class ReferrersController < ApplicationController
    def new
    @referrer = Referrer.new
  end

  def create
    @referrer = Referrer.new(params[:signup])
    if @referrer.save
      flash[:success] = "Thanks for signing up to be a Referrer!"
      redirect_to :back
    else
      render 'new'
    end
  end
end
