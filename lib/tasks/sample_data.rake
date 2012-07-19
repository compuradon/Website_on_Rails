namespace :db do
  desc "Fill database with sample data"
  task :populate=> :environment do
  admin = User.create!(:name=> "Thomas",
                         :email=> "t.esch1@yahoo.com",
                         :password=> "foobar",
                         :password_confirmation=> "foobar")
    admin.toggle!(:admin)

    User.create!(:name=> "Innovations Quantified LLC",
                 :email=> "iq@iquant.us",
                 :password=> "foobar",
                 :password_confirmation=> "foobar")
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(:name=> name,
                   :email=> email,
                   :password=> password,
                   :password_confirmation=> password)
    end
  end
end
