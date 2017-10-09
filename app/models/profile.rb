# == Schema Information
#
# Table name: profiles
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  image_data :string
#  bio        :text
#  job        :string
#  hobbies    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Profile < ApplicationRecord
    include ImageUploader::Attachment.new(:image)

    # First Name, Last Name, Profile Photo and Bio should not be empty
    validates :first_name, :last_name, :image_data, :bio, presence: true

    # Bio should not be greater than 300 characters
    validates :bio, length: { maximum: 300 }

    # Full Name
    def full_name
        (self.first_name + " " + self.last_name).strip
    end

    # Choose a random profile
    scope :random_profile, -> {
        # Set a random offset
        offset = rand(Profile.count)

        # Get the random Profile
        Profile.offset(offset).first
    }

    # Choose two different random profiles
    def self.choose_two_random_profiles
        profile = {}
        profile[:left] = self.random_profile
        while(profile[:left]==profile[:right] || profile[:right].nil? )
            profile[:right] = self.random_profile
        end
        profile
    end

    # Win Count
    def win_count
        Vote.where(winner_id: self.id).count(:winner_id)
    end

    # Lose Count
    def lose_count
        Vote.where(loser_id: self.id).count(:loser_id)
    end
end
