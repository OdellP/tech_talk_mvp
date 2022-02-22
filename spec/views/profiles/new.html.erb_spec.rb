require 'rails_helper'

RSpec.describe "profiles/new", type: :view do
  before(:each) do
    assign(:profile, Profile.new(
      developer_type: "MyString",
      preferred_languange: "MyString",
      points: 1,
      ranking: "MyString",
      user: nil
    ))
  end

  it "renders new profile form" do
    render

    assert_select "form[action=?][method=?]", profiles_path, "post" do

      assert_select "input[name=?]", "profile[developer_type]"

      assert_select "input[name=?]", "profile[preferred_languange]"

      assert_select "input[name=?]", "profile[points]"

      assert_select "input[name=?]", "profile[ranking]"

      assert_select "input[name=?]", "profile[user_id]"
    end
  end
end
