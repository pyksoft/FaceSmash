# require 'rails_helper'

# RSpec.describe "profiles/index", type: :view do
#   before(:each) do
#     assign(:profiles, [
#       Profile.create!(
#         :first_name => "First Name",
#         :last_name => "Last Name",
#         :image_data => "Image Data",
#         :bio => "MyText",
#         :job => "Job",
#         :hobbies => "Hobbies"
#       ),
#       Profile.create!(
#         :first_name => "First Name",
#         :last_name => "Last Name",
#         :image_data => "Image Data",
#         :bio => "MyText",
#         :job => "Job",
#         :hobbies => "Hobbies"
#       )
#     ])
#   end

#   it "renders a list of profiles" do
#     render
#     assert_select "tr>td", :text => "First Name".to_s, :count => 2
#     assert_select "tr>td", :text => "Last Name".to_s, :count => 2
#     assert_select "tr>td", :text => "Image Data".to_s, :count => 2
#     assert_select "tr>td", :text => "MyText".to_s, :count => 2
#     assert_select "tr>td", :text => "Job".to_s, :count => 2
#     assert_select "tr>td", :text => "Hobbies".to_s, :count => 2
#   end
# end
