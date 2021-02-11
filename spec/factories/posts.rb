FactoryGirl.define do
  factory :post do
    date Date.today
    rationale "Stuff at 1st rationale"
  end

  factory :second_post, class: "Post" do
    date Date.yesterday
    rationale "2nd rationale stuff"
  end
end
