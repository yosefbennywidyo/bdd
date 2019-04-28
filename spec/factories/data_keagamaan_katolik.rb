FactoryBot.define do
  factory :data_keagamaan_katolik do |u|
    u.sequence(:judul) { "Judul data keagamaan katolik ke-#{u}" }
    u.keterangan { "Keterangan data keagamaan katolik ke-#{u}" }
    u.tautan { "148cjHGXBqqghbunQxGC2tDp8z1YeCnuN" }
  end
end