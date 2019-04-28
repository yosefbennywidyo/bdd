FactoryBot.define do
  factory :data_pendidikan_agama_katolik do |u|
    u.sequence(:judul) { "Judul data pendidikan agama katolik ke-#{u}" }
    u.keterangan { "Keterangan data pendidikan agama katolik ke-#{u}" }
    u.tautan { "148cjHGXBqqghbunQxGC2tDp8z1YeCnuN" }
  end
end
