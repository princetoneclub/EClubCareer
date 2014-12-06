class Posting < ActiveRecord::Base
  validates_presence_of :title, :description, :location, :ptype # :deadline # TODO
	def self.search(params)
		postings = self.all
	  	postings = postings.where("title like ? ", "%#{params[:search]}%") if params[:search].present?
	  	postings = postings.where("ptype like ? ", "%#{params[:ptype]}%") if params[:ptype].present?
		return postings
	end
end
