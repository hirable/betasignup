class OriginatorsController < ApplicationController
  def new
    @originator = Originator.new
  end

  def create
    @originator = Originator.new(params[:signup])
    if @originator.save
      flash[:success] = "Thanks for signing up to be an Originator!"
      redirect_to :back
    else
      render 'new'
    end
  end
end
