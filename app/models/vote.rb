# == Schema Information
#
# Table name: votes
#
#  id         :integer          not null, primary key
#  winner_id  :integer
#  loser_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Vote < ApplicationRecord

    scope :rankings, -> {
        rankings = []

        Profile.all.each { |profile|
            profile = {
                :profile => profile,
                :points => profile.win_count - profile.lose_count
            }

            rankings << profile
        }

        rankings.sort_by! { |k| k[:points] }.reverse
    }

    # scope :winners, -> {
    #     select("votes.winner_id, count(votes.winner_id) as votes.win_count").
    #     group("votes.winner_id").
    #     order("count(votes.winner_id) DESC")
    # }

    # scope :losers, -> {
    #     group("votes.loser_id").
    #     order("count(votes.loser_id) DESC")
    # }

    # scope :top10, ->{
    #     joins(:vote).
    #     group("facts.id").
    #     order("count(votes.id) DESC").
    #     limit(10)
    # }

    # scope :top10, ->{
    #     select("songs.id, songs.name, artist_id, count(play_counts.id) AS play_count").
    #     joins(:play_count).
    #     joins(:artist).
    #     group("songs.id").
    #     order("play_count DESC").
    #     limit(10)
    #   }
end
