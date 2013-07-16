class CandidatesController < ApplicationController
  def new
    @candidate = Candidate.new
  end

  def create
    @candidate = Candidate.new(params[:signup])
    if @candidate.save
      flash[:success] = "Thanks for signing up to be a Candidate!"
      redirect_to :back
    else
      render 'new'
    end
  end
end
