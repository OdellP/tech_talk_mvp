require 'rails_helper'

RSpec.describe "profiles/show", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      developer_type: "Developer Type",
      preferred_languange: "Preferred Languange",
      points: 2,
      ranking: "Ranking",
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Developer Type/)
    expect(rendered).to match(/Preferred Languange/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Ranking/)
    expect(rendered).to match(//)
  end
end
