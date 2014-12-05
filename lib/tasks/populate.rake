namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_postings
  end
end

def make_postings
  postings = Posting.new(
  title:"Computer Scientist", 
  location:"Irvin's pants", 
  description:"you dont wanna know", 
  deadline:Time.now)
  postings.save()
end