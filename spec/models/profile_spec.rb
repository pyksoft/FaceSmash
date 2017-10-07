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

require 'rails_helper'

RSpec.describe Profile, type: :model do

  it "should have a first name" do
    expect(Profile.new(last_name: "Dimaliwat", image_data: "Test Image", bio: "Hello World")).to be_invalid
    expect(Profile.new(first_name: "Glenn", last_name: "Dimaliwat", image_data: "Test Image", bio: "Hello World")).to be_valid
  end

  it "should have a last name" do
    expect(Profile.new(first_name: "Glenn", image_data: "Test Image", bio: "Hello World")).to be_invalid
    expect(Profile.new(first_name: "Glenn", last_name: "Dimaliwat", image_data: "Test Image", bio: "Hello World")).to be_valid  end

  it "should have a full name" do
    expect(Profile.new(first_name: "Glenn", last_name: "Dimaliwat", image_data: "Test Image", bio: "Hello World").full_name).to eq("Glenn Dimaliwat")
    expect(Profile.new(first_name: "Glenn Carlo", last_name: "Dimaliwat", image_data: "Test Image", bio: "Hello World").full_name).to eq("Glenn Carlo Dimaliwat")
    expect(Profile.new(first_name: "John", last_name: "Smith", image_data: "Test Image", bio: "Hello World").full_name).to eq("John Smith")
    expect(Profile.new(first_name: "Charles", last_name: "Maslow Dickens", image_data: "Test Image", bio: "Hello World").full_name).to eq("Charles Maslow Dickens")
    expect(Profile.new(first_name: "", last_name: "", image_data: "Test Image", bio: "Hello World").full_name).to eq("")
  end

  it "should have a profile image" do
    expect(Profile.new(first_name: "Glenn", last_name: "Dimaliwat", bio: "Hello World")).to be_invalid
    expect(Profile.new(first_name: "Glenn", last_name: "Dimaliwat", image_data: "Test Image", bio: "Hello World")).to be_valid
  end

  it "should have a bio" do
    expect(Profile.new(first_name: "Glenn", last_name: "Dimaliwat", image_data: "Test Image")).to be_invalid
    expect(Profile.new(first_name: "Glenn", last_name: "Dimaliwat", image_data: "Test Image", bio: "Hello World")).to be_valid
  end

  it "should disallow bios greater than 300 characters" do
    expect(Profile.new(first_name: "Glenn", last_name: "Dimaliwat", image_data: "Test Image", bio: "Hello World")).to be_valid
    short_bio = "a" * 300
    expect(Profile.new(first_name: "Glenn", last_name: "Dimaliwat", image_data: "Test Image", bio: short_bio)).to be_valid
    long_bio = "a" * 301
    expect(Profile.new(first_name: "Glenn", last_name: "Dimaliwat", image_data: "Test Image", bio: long_bio)).to be_invalid
    long_bio = "a" * 1000
    expect(Profile.new(first_name: "Glenn", last_name: "Dimaliwat", image_data: "Test Image", bio: long_bio)).to be_invalid  
  end

end
