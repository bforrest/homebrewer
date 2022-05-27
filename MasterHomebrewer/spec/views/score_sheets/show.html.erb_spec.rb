require 'rails_helper'

RSpec.describe "score_sheets/show", type: :view do
  before(:each) do
    @score_sheet = assign(:score_sheet, ScoreSheet.create!(
      category: "Category",
      score: 2,
      brewer: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Category/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
