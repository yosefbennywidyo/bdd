FactoryBot.define do
  factory :informasi_pengumuman do |u|
    u.sequence(:judul) { "Judul informasi pengumuman ke-#{u}" }
    u.keterangan { "Keterangan informasi pengumuman ke-#{u}" }
    u.tautan { "148cjHGXBqqghbunQxGC2tDp8z1YeCnuN" }
  end
end
