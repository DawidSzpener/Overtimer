FactoryGirl.define do
  factory :post do
    date Date.today
    rationale "Stuff at 1st rationale"
    user
  end

  factory :second_post, class: "Post" do
    date Date.yesterday
    rationale "2nd rationale stuff"
    user
  end

  factory :post_from_other_user, class: "Post" do
    date Date.yesterday
    rationale "post from other user"
    non_authorized_user
  end
end
