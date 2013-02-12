FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com"}   
    sequence(:williams_warn_number) { |n| "WW#{n}"}
    password "foobar"
    password_confirmation "foobar"

    factory :admin do
      admin true
    end
  end

  factory :recipe do
    recipe_code "WW1-Summer-Ale-Ex-1"
    original_gravity "1.040"
    user
  end
end
