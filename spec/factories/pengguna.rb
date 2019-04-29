FactoryBot.define do
	# TODO: create user with peran
  

end
=begin
factory :pengguna do |u|
    u.sequence(:nama_lengkap) { "Pengguna ke-#{u}" }
    u.email { "pengguna_ke#{u}@bdd.id" }
    u.password { "p4$Sw0rd" }
    u.password_confirmation { "p4$Sw0rd" }
    u.confirm!
  end

FactoryBot.define :pengguna do |pengguna|
  pengguna.email                 { Factory.next(:email) }
  pengguna.password              { "password" }
  pengguna.password_confirmation { "password" }
end
=end