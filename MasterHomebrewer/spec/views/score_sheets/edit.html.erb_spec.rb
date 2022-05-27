require 'rails_helper'

RSpec.describe "score_sheets/edit", type: :view do
  before(:each) do
    @score_sheet = assign(:score_sheet, ScoreSheet.create!(
      category: "MyString",
      score: 1,
      brewer: nil
    ))
  end

  it "renders the edit score_sheet form" do
    render

    assert_select "form[action=?][method=?]", score_sheet_path(@score_sheet), "post" do

      assert_select "input[name=?]", "score_sheet[category]"

      assert_select "input[name=?]", "score_sheet[score]"

      assert_select "input[name=?]", "score_sheet[brewer_id]"
    end
  end
end
