FactoryBot.define do
  factory :user do
    last_name             { '山田' }
    first_name            { '一郎' }
    last_name_kana        { 'ヤマダ' }
    first_name_kana       { 'イチロウ' }
    phone_number         { Faker::Number.between(from: 00_000_000_000, to: 99_999_999_999) }
    email                 { Faker::Internet.free_email }
    password              = '1qaz1qaz'
    password              { password }
    password_confirmation { password }
  end
end
