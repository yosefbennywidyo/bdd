FactoryBot.define do
  factory :informasi_berita_terkini do |u|
    u.sequence(:judul) { "Judul informasi berita terkini ke-#{u}" }
    u.keterangan { "Keterangan informasi berita terkini ke-#{u}" }
    u.tautan { "148cjHGXBqqghbunQxGC2tDp8z1YeCnuN" }
  end
end
