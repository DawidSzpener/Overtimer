FactoryGirl.define do
  sequence :email do |n|
    "test#{n}@example.com"
  end

  factory :user do
    first_name "Dawid"
    last_name "Szef"
    email { generate :email }
    password "asdasd"
    password_confirmation "asdasd"
  end

  factory :admin_user, class: "AdminUser" do
    first_name "Admin"
    last_name "User"
    email { generate :email }
    password "asdasd"
    password_confirmation "asdasd"
  end

  factory :non_authorized_user, class: "User" do
    first_name "Non authorised"
    last_name "User"
    email { generate :email }
    password "asdasd"
    password_confirmation "asdasd"
  end
end
