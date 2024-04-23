namespace :addresses do
  desc 'create national addresses for clients'
  task national: :environment do
    11.times { City.create!(name: Faker::Address.city) }
    11.times { State.create!(name: Faker::Address.state) }
    11.times { Country.create!(name: Faker::Address.country) }

    cities = City.all
    states = State.all
    countries = Country.all

    Client.all.each do |client|
      client.create_address!(
        street1: Faker::Address.street_address,
        city: cities.sample,
        state: states.sample,
        area_code: Faker::Number.number(digits: 5),
        area_code_suffix: Faker::Number.number(digits: 4),
        country: countries.sample
      )
    end
  end

  task all: ['addresses:national']
end
