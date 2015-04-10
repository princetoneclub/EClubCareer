class PostingsController < ApplicationController
  def new
    @posting = Posting.new
  end

  def create
    @posting = Posting.new(posting_params)

    if @posting.save
      flash[:notice] = "Event Created!"
      redirect_to root_path
    else 
      render 'new'
    end
  end

  def show
    @posting = Posting.find(params[:id])
  end

  def index
    searchpar = Posting.search(params)
    @postings = searchpar.paginate(:page => params[:page])
    @results_found = searchpar.length
  end

  private

    def posting_params
      params.require(:posting).permit(:title, :location, :ptype, :description, :deadline)
    end
end
