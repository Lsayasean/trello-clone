FactoryBot.define do
    factory :user do
      name { Faker::Name.first_name }
      email { "#{name}@#{Faker::Internet.unique.domain_name}" }
      encrypted_password {'password'}
    end
  end