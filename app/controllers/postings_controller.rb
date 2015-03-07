class PostingsController < ApplicationController
  def new
    @posting = Posting.new
  end

  def create
    @posting = Posting.new(posting_params)

    if @posting.save
      flash[:notice] = "Event Created!"
      redirect_to confirmation_path(@posting)
    else 
      render 'new'
    end
  end

  def show
    @posting = Posting.find(params[:id])
  end

  def index
    @postings = Posting.search(params).paginate(:page => params[:page])
  end

  private
    def posting_params
      params.require(:posting).permit(:title, :location, :ptype, :description, :deadline)
    end
end
