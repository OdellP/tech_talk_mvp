require 'rails_helper'

RSpec.describe "profiles/edit", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      developer_type: "MyString",
      preferred_languange: "MyString",
      points: 1,
      ranking: "MyString",
      user: nil
    ))
  end

  it "renders the edit profile form" do
    render

    assert_select "form[action=?][method=?]", profile_path(@profile), "post" do

      assert_select "input[name=?]", "profile[developer_type]"

      assert_select "input[name=?]", "profile[preferred_languange]"

      assert_select "input[name=?]", "profile[points]"

      assert_select "input[name=?]", "profile[ranking]"

      assert_select "input[name=?]", "profile[user_id]"
    end
  end
end
