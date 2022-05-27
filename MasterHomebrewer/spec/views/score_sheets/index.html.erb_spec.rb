require 'rails_helper'

RSpec.describe "score_sheets/index", type: :view do
  before(:each) do
    assign(:score_sheets, [
      ScoreSheet.create!(
        category: "Category",
        score: 2,
        brewer: nil
      ),
      ScoreSheet.create!(
        category: "Category",
        score: 2,
        brewer: nil
      )
    ])
  end

  it "renders a list of score_sheets" do
    render
    assert_select "tr>td", text: "Category".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
