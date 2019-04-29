FactoryBot.define do
  factory :laporan_penyuluh_agama_katolik do |u|
    u.sequence(:judul) { "Judul laporan penyuluh agama katolik ke-#{u}" }
    u.tautan { "148cjHGXBqqghbunQxGC2tDp8z1YeCnuN" }
  end
end
