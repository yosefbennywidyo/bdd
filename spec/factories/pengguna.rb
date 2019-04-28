FactoryBot.define do
  factory :pengguna do
    confirmed_at { Time.now }
    confirmation_sent_at { Time.now }
    confirmation_token { "12345" }
  end
end
=begin
FactoryBot.define :pengguna do |pengguna|
  pengguna.email                 { Factory.next(:email) }
  pengguna.password              { "password" }
  pengguna.password_confirmation { "password" }
end
=end