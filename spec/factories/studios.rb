FactoryBot.define do
  factory :studio do
    name  { 'Aスタジオ' }
    price { Faker::Number.between(from: 500, to: 9_999_999) }

    # studioから見てadminはbelongs_toの関係のため、adminモデルとのアソシエーション定義
    association :admin
  end
end