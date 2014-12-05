class PostingController < ApplicationController
  def new
  end

  def create
  end

  def show
    @posting = Posting.find(params[:id])
  end

  def index
    @postings = Posting.all
  end

end
