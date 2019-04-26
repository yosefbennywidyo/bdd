FactoryBot.define do
  factory :pengguna do
    confirmed_at { Time.now }
    confirmation_sent_at { Time.now }
    confirmation_token { "12345" }
  end
end
