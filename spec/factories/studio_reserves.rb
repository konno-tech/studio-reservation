FactoryBot.define do
  factory :studio_reserve do

    date               { '2020-11-19' }
    time_from_id       { 1 }
    time_to_id         { 2 }
    number_of_users_id { 2 }
    payment_method_id  { 1 }
    token              { 'tok_abcdefghijk00000000000000000' }

  end
end