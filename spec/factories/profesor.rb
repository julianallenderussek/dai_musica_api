FactoryBot.define do
    factory :profesor do
        school { School.find_by(name: "Dai Academia")}
        first_name {Faker::Name.first_name}
        last_name {Faker::Name.last_name}
        email { Faker::Internet.email }
        phone_number {Faker::PhoneNumber.phone_number}
        status {["active", "not_active"].sample}
        instrument {["guitar", "piano"].sample}
        country { Faker::Address.country }
        city { Faker::Address.city }
    end
  end