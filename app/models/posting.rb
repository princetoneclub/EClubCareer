class Posting < ActiveRecord::Base
  validates_presence_of :title, :description, :location, :ptype, :deadline
  validate :check_ptype

  def check_ptype
  	errors.add(:ptype, "Cannot be this value") if (self.ptype != "full_time" && self.ptype != "part_time" && self.ptype != "internship")
  end
  
  def self.search(params)
  	postings = self.all
  	postings = postings.where("deadline > ?", Time.now).order(:deadline)
  	postings = postings.where("title like ? ", "%#{params[:title]}%") if params[:title].present?
  	postings = postings.where("location like ? ", "%#{params[:location]}%") if params[:location].present?
  	if params[:ptype].present?
  	  postings = postings.where("ptype != 'full_time'") if params[:ptype]["full_time"] == "0"
  	  postings = postings.where("ptype != 'part_time'") if params[:ptype]["part_time"] == "0"
  	  postings = postings.where("ptype != 'internship'") if params[:ptype]["internship"] == "0"
  	end
  	return postings
  end
end
