require 'rails_helper'

RSpec.describe Brewer, type: :model do
  describe "validations" do
    it "requires first_name to be set" do
      expect(subject).to_not be_valid
      expect(subject.errors[:first_name].size).to eq(1)
    end
  end
end
