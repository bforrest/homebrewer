require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/score_sheets", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # ScoreSheet. As you add validations to ScoreSheet, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      ScoreSheet.create! valid_attributes
      get score_sheets_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      score_sheet = ScoreSheet.create! valid_attributes
      get score_sheet_url(score_sheet)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_score_sheet_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      score_sheet = ScoreSheet.create! valid_attributes
      get edit_score_sheet_url(score_sheet)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new ScoreSheet" do
        expect {
          post score_sheets_url, params: { score_sheet: valid_attributes }
        }.to change(ScoreSheet, :count).by(1)
      end

      it "redirects to the created score_sheet" do
        post score_sheets_url, params: { score_sheet: valid_attributes }
        expect(response).to redirect_to(score_sheet_url(ScoreSheet.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new ScoreSheet" do
        expect {
          post score_sheets_url, params: { score_sheet: invalid_attributes }
        }.to change(ScoreSheet, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post score_sheets_url, params: { score_sheet: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested score_sheet" do
        score_sheet = ScoreSheet.create! valid_attributes
        patch score_sheet_url(score_sheet), params: { score_sheet: new_attributes }
        score_sheet.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the score_sheet" do
        score_sheet = ScoreSheet.create! valid_attributes
        patch score_sheet_url(score_sheet), params: { score_sheet: new_attributes }
        score_sheet.reload
        expect(response).to redirect_to(score_sheet_url(score_sheet))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        score_sheet = ScoreSheet.create! valid_attributes
        patch score_sheet_url(score_sheet), params: { score_sheet: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested score_sheet" do
      score_sheet = ScoreSheet.create! valid_attributes
      expect {
        delete score_sheet_url(score_sheet)
      }.to change(ScoreSheet, :count).by(-1)
    end

    it "redirects to the score_sheets list" do
      score_sheet = ScoreSheet.create! valid_attributes
      delete score_sheet_url(score_sheet)
      expect(response).to redirect_to(score_sheets_url)
    end
  end
end