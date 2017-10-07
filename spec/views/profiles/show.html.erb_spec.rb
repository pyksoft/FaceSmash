require 'rails_helper'

RSpec.describe "profiles/show", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :image_data => "Image Data",
      :bio => "MyText",
      :job => "Job",
      :hobbies => "Hobbies"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Image Data/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Job/)
    expect(rendered).to match(/Hobbies/)
  end
end
