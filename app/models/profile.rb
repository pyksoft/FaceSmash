class Profile < ApplicationRecord
    include ImageUploader::Attachment.new(:image)
end
