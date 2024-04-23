namespace :clients do
  desc 'Create Clients'
  task national: :environment do
    21.times do
      Client.create!(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        date_of_birth: Faker::Date.birthday(min_age: 21, max_age: 100)
      )
    end
  end

  task all: ['clients:national']
end
