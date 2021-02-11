FactoryGirl.define do
  factory :user do
    first_name "Dawid"
    last_name "Szef"
    email "test@test.com"
    password "asdasd"
    password_confirmation "asdasd"
  end

  factory :admin_user, class: "AdminUser" do
    first_name "Admin"
    last_name "User"
    email "admin@test.com"
    password "asdasd"
    password_confirmation "asdasd"
  end
end
