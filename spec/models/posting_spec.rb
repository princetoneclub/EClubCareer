require 'rails_helper'

describe "Posting" do
  describe "validations" do
    before do
      @posting = Posting.new
    end
    it "should not allow for blank input fields" do
      @posting.should_not be_valid
    end
  end
end
