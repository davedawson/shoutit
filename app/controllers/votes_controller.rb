class VotesController < ApplicationController
  def new
    @vote = Vote.new
  end

  def create
    @vote = Vote.create_vote(vote_params)
    if @vote.id
      redirect_to :back, :notice => "Your vote has been added!"
    else
      redirect_to :back, :notice => "Sorry, that vote didn't go through. Try again?"
    end
  end
  def shout_vote
    @shout = Shout.find params[:id]
  end

  private
    def vote_params
      params.require(:vote).permit(
        :voter,
        :type,
        :value,
        :user,
      )
    end
end 