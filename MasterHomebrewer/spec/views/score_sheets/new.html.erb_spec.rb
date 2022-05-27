require 'rails_helper'

RSpec.describe "score_sheets/new", type: :view do
  before(:each) do
    assign(:score_sheet, ScoreSheet.new(
      category: "MyString",
      score: 1,
      brewer: nil
    ))
  end

  it "renders new score_sheet form" do
    render

    assert_select "form[action=?][method=?]", score_sheets_path, "post" do

      assert_select "input[name=?]", "score_sheet[category]"

      assert_select "input[name=?]", "score_sheet[score]"

      assert_select "input[name=?]", "score_sheet[brewer_id]"
    end
  end
end
