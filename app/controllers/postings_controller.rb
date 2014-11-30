class PostingsController < ApplicationController
  def new
    @posting = Posting.new
  end

  def create
  end

  def show
    @posting = Posting.find(params[:id])
  end

  def index
    @postings = Posting.paginate(:page => params[:page], :per_page => 5)
  end

end
