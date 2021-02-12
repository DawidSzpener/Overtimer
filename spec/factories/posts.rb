FactoryGirl.define do
  factory :post do
    date Date.today
    rationale "Stuff at 1st rationale"
    overtime_request 2.5
    user
  end

  factory :second_post, class: "Post" do
    date Date.yesterday
    rationale "2nd rationale stuff"
    overtime_request 0.5
    user
  end

  factory :post_from_other_user, class: "Post" do
    date Date.yesterday
    rationale "post from other user"
    overtime_request 2.5
    non_authorized_user
  end
end
