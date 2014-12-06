require 'rails_helper'

describe "Postings Pages" do
  subject { page }

  describe "#new" do
    before { visit new_posting_path }

    let(:submit) { "submit" }

    describe "with valid information" do
      before do
        fill_in "Title", with: "Random Title"
        fill_in "Location", with: "New Jersey"
        fill_in "Description", with: "Sample Description"
        # fill_in "Deadline", with: Time.now()
        fill_in "Ptype", with: "Internship"
      end
      
      it "should create a posting" do
        expect { click_button submit }.to change(Posting, :count)
      end
    end
  end
end
