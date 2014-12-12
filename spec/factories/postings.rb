FactoryGirl.define do
  factory :posting do
    title "MyString"
    location "MyString"
    ptype "foo"
    description "MyString"
    deadline "2014-11-29 18:45:57"

    trait :internship do
      ptype "internship"
    end
  end

end
