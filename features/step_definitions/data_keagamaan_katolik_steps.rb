Dengan("data keagamaan katolik tersedia di database") do
	FactoryBot.create(:data_keagamaan_katolik, :pengguna_id => 2)
end

Dengan("data pendidikan agama katolik tersedia di database") do
	FactoryBot.create(:data_keagamaan_katolik, :pengguna_id => 5)
end

Dengan("informasi berita terkini tersedia di database") do
	FactoryBot.create(:informasi_berita_terkini, :pengguna_id => 2)
	FactoryBot.create(:informasi_berita_terkini, :pengguna_id => 5)
end

Dengan("informasi pengumuman tersedia di database") do
	FactoryBot.create(:informasi_pengumuman, :pengguna_id => 2)
	FactoryBot.create(:informasi_pengumuman, :pengguna_id => 5)
end