require 'rails_helper'

RSpec.describe "profiles/index", type: :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        developer_type: "Developer Type",
        preferred_languange: "Preferred Languange",
        points: 2,
        ranking: "Ranking",
        user: nil
      ),
      Profile.create!(
        developer_type: "Developer Type",
        preferred_languange: "Preferred Languange",
        points: 2,
        ranking: "Ranking",
        user: nil
      )
    ])
  end

  it "renders a list of profiles" do
    render
    assert_select "tr>td", text: "Developer Type".to_s, count: 2
    assert_select "tr>td", text: "Preferred Languange".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Ranking".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
