class VoteController < ApplicationController
  def index
    profiles = Profile.choose_two_random_profiles
    
    @profile_left = profiles[:left]
    @profile_right = profiles[:right]
  end
end
