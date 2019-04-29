FactoryBot.define do
  factory :laporan_guru_agama_katolik do |u|
    u.sequence(:judul) { "Judul laporan guru agama katolik ke-#{u}" }
    u.tautan { "148cjHGXBqqghbunQxGC2tDp8z1YeCnuN" }
  end
end
