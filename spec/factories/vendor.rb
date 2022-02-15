FactoryBot.define do
    factory :vendor do
        school { School.find_by(name: "Dai Academia")}
        first_name {Faker::Name.first_name}
        last_name {Faker::Name.last_name}
        email { Faker::Internet.email }
        phone_number {Faker::PhoneNumber.phone_number}
    end
  end