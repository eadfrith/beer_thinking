FactoryGirl.define do
  factory :user do
    name     "Jerome Scott"
    email    "jerome@example.com"
    williams_warn_number "WW2"
    password "foobar"
    password_confirmation "foobar"
  end
end
