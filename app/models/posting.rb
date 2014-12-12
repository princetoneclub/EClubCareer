class Posting < ActiveRecord::Base
  validates_presence_of :title, :description, :location, :ptype # :deadline # TODO
  validate :check_ptype

  def check_ptype
    errors.add(:ptype, "Cannot be this value") if (self.ptype != "full_time" && self.ptype != "part_time" && self.ptype != "internship")
  end
 
	def self.search(params)
		postings = self.all
		postings = postings.where("deadline > ?", Time.now).order(:deadline)
	  	postings = postings.where("title like ? ", "%#{params[:search]}%") if params[:search].present?
	  	postings = postings.where("ptype like ? ", "%#{params[:ptype]}%") if params[:ptype].present?
		return postings
	end
end
