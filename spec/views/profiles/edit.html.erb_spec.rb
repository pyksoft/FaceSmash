# require 'rails_helper'

# RSpec.describe "profiles/edit", type: :view do
#   before(:each) do
#     @profile = assign(:profile, Profile.create!(
#       :first_name => "MyString",
#       :last_name => "MyString",
#       :image_data => "MyString",
#       :bio => "MyText",
#       :job => "MyString",
#       :hobbies => "MyString"
#     ))
#   end

#   it "renders the edit profile form" do
#     render

#     assert_select "form[action=?][method=?]", profile_path(@profile), "post" do

#       assert_select "input[name=?]", "profile[first_name]"

#       assert_select "input[name=?]", "profile[last_name]"

#       assert_select "input[name=?]", "profile[image]"

#       assert_select "textarea[name=?]", "profile[bio]"

#       assert_select "input[name=?]", "profile[job]"

#       assert_select "input[name=?]", "profile[hobbies]"
#     end
#   end
# end
