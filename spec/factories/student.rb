FactoryBot.define do
    factory :student do
        school { School.find_by(name: "Dai Academia")}
        profesor { Profesor.all.where( school: School.find_by(name: "Dai Academia")).sample}
        vendor { Vendor.all.where( school: School.find_by(name: "Dai Academia")).sample}#crear los profesor en los seeds
        first_name {Faker::Name.first_name}
        last_name {Faker::Name.last_name}
        email { Faker::Internet.email }
        phone_number {Faker::PhoneNumber.phone_number}
        status {["active", "not_active"].sample}
        modality { ["in_person", "remote", "home"].sample }
        instrument {["guitar", "piano"].sample}
        country { Faker::Address.country }
        city { Faker::Address.city }
        marketing {["facebook","instagram", "acquaintance"].sample}
    end
  end