class VoteController < ApplicationController
  def index
    profiles = Profile.choose_two_random_profiles
    
    @profile_left = profiles[:left]
    @profile_right = profiles[:right]
  end

  def create
    winner = params[:winner_id]
    loser = params[:loser_id]

    Vote.create(winner_id: winner, loser_id: loser)
    
    redirect_to vote_index_url
  end

end
