namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_postings
  end
end

def make_postings
  puts "Creating Internships"
  20.times do
    Posting.create(
      title: Faker::Name.title, 
      location: Faker::Address.city + ", " + Faker::Address.state_abbr, 
      description: Faker::Lorem.paragraph(10), 
      deadline: Faker::Time.between(1.month.ago, Time.now + 1.month),
      ptype: "internship"
    )
  end
  puts "Creating Full-Times"
  20.times do
    Posting.create(
      title: Faker::Name.title, 
      location: Faker::Address.city + ", " + Faker::Address.state_abbr, 
      description: Faker::Lorem.paragraph(10), 
      deadline: Faker::Time.between(1.month.ago, Time.now + 1.month),
      ptype: "full_time"
    )
  end
  puts "Creating Part-Times"
  20.times do
    Posting.create(
      title: Faker::Name.title, 
      location: Faker::Address.city + ", " + Faker::Address.state_abbr, 
      description: Faker::Lorem.paragraph(10), 
      deadline: Faker::Time.between(1.month.ago, Time.now + 1.month),
      ptype: "part_time"
    )
  end
end