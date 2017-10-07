require 'rails_helper'

RSpec.describe "profiles/new", type: :view do
  before(:each) do
    assign(:profile, Profile.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :image_data => "MyString",
      :bio => "MyText",
      :job => "MyString",
      :hobbies => "MyString"
    ))
  end

  it "renders new profile form" do
    render

    assert_select "form[action=?][method=?]", profiles_path, "post" do

      assert_select "input[name=?]", "profile[first_name]"

      assert_select "input[name=?]", "profile[last_name]"

      assert_select "input[name=?]", "profile[image_data]"

      assert_select "textarea[name=?]", "profile[bio]"

      assert_select "input[name=?]", "profile[job]"

      assert_select "input[name=?]", "profile[hobbies]"
    end
  end
end