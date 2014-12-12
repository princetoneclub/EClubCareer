require 'rails_helper'

describe "Posting" do
  describe "validations" do
    describe "basic stuff" do
      before do
        @posting = Posting.new
      end
      it "should not allow for blank input fields" do
        @posting.should_not be_valid
      end

    end

    describe "checking ptype" do
      let (:valid_posting) { FactoryGirl.build(:posting, :internship) }
      let (:invalid_posting) { FactoryGirl.build(:posting) }

      it "should check ptype" do
        expect(valid_posting).to be_valid
        expect(invalid_posting).to_not be_valid
      end
    end
  end
end
