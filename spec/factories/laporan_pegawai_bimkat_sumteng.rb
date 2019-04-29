FactoryBot.define do
  factory :laporan_pegawai_bimkat_sumteng do |u|
    u.sequence(:judul) { "Judul laporan pegawai bimkat sumteng ke-#{u}" }
    u.tautan { "148cjHGXBqqghbunQxGC2tDp8z1YeCnuN" }
  end
end
