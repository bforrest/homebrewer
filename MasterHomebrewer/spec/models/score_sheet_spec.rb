require 'rails_helper'

RSpec.describe ScoreSheet, type: :model do
 describe "validations" do
    it "requires category to be set" do
      expect(subject).to_not be_valid
      expect(subject.errors[:category].size).to eq(1)
    end
      it "requires score to be set" do
      expect(subject).to_not be_valid
      expect(subject.errors[:score].size).to eq(1)
    end
  end
end
