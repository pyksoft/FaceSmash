class VoteController < ApplicationController
  def index
    profiles = Profile.choose_two_random_profiles
    
    @profile_left = profiles[:left]
    @profile_right = profiles[:right]
  end

  # Create a Vote
  def create
    winner = params[:winner_id]
    loser = params[:loser_id]

    Vote.create(winner_id: winner, loser_id: loser)
    
    redirect_to vote_index_url
  end

  # Show Rankings
  def rankings
    # p Profile.find(1).win_count
    # p Profile.find(1).lose_count
    # p Vote.rankings
    @rankings = Vote.rankings
  end
end
