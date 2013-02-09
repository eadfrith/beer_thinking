namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Example User",
                 email: "example@railstutorial.org",
                 williams_warn_number: "WW1000",
                 password: "foobar",
                 password_confirmation: "foobar")
    admin.toggle!(:admin)
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      williams_warn_number = "WW#{n+1}"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   williams_warn_number: williams_warn_number,
                   password: password,
                   password_confirmation: password)
    end
  end
end
