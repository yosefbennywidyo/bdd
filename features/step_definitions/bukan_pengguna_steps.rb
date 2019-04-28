Ketika("saya mencoba mengisi formulir masuk") do
	click_link "Masuk"
	fill_in "Email", :with => "pemirsa@user.test"
	fill_in "Password", :with => "pa$$word"
	click_button "Masuk"
end

Tapi("saya tidak berhasil masuk aplikasi") do
	expect(page).to have_content("Ketidaksesuaian Email atau password.")
end

Maka("saya dapat melihat Data Keagamaan Katolik") do
	visit data_keagamaan_katolik_index_path
end

Dan("saya dapat melihat Data Pendidikan Agama Katolik") do
	visit data_pendidikan_agama_katolik_index_path
end

Dan("saya dapat melihat Informasi Berita Terkini") do
	visit informasi_berita_terkini_index_path
end

Dan("saya dapat melihat Informasi Pengumuman") do
	visit informasi_pengumuman_index_path
end

Maka("saya tidak dapat membuat Data Keagamaan Katolik") do
	visit new_data_keagamaan_katolik_path
	fill_in "Judul", :with => "judul data keagamaan katolik yang dibuat oleh bukan pengguna"
	fill_in "Keterangan", :with => "keterangan data keagamaan katolik yang dibuat oleh bukan pengguna"
	click_button "Membuat"
	expect(page).to have_content("Maaf, Anda tidak berhak membuatnya.")
end

Dan("saya tidak dapat membuat Data Pendidikan Agama Katolik") do
	visit new_data_pendidikan_agama_katolik_path
	fill_in "Judul", :with => "judul data pendidikan agama katolik yang dibuat oleh bukan pengguna"
	fill_in "Keterangan", :with => "keterangan data pendidikan agama katolik yang dibuat oleh bukan pengguna"
	click_button "Membuat"
	expect(page).to have_content("Maaf, Anda tidak berhak membuatnya.")
end

Dan("saya tidak dapat membuat Informasi Berita Terkini") do
	visit new_informasi_berita_terkini_path
	fill_in "Judul", :with => "judul Informasi Berita Terkini yang dibuat oleh bukan pengguna"
	fill_in "Keterangan", :with => "keterangan Informasi Berita Terkini yang dibuat oleh bukan pengguna"
	click_button "Membuat"
	expect(page).to have_content("Maaf, Anda tidak berhak membuatnya.")
end

Dan("saya tidak dapat membuat Informasi Pengumuman") do
	visit new_informasi_pengumuman_path
	fill_in "Judul", :with => "judul Informasi Pengumuman yang dibuat oleh bukan pengguna"
	fill_in "Keterangan", :with => "keterangan Informasi Pengumuman yang dibuat oleh bukan pengguna"
	click_button "Membuat"
	expect(page).to have_content("Maaf, Anda tidak berhak membuatnya.")
end

Maka("saya tidak dapat mengedit Data Pendidikan Agama Katolik") do
	visit edit_data_keagamaan_katolik_path
	fill_in "Judul", :with => "judul data keagamaan katolik yang dibuat oleh bukan pengguna"
	fill_in "Keterangan", :with => "keterangan data keagamaan katolik yang dibuat oleh bukan pengguna"
	click_button "Edit"
	expect(page).to have_content("Maaf, Anda tidak berhak mengeditnya.")
end

Dan("saya tidak dapat mengedit Data Keagamaan Katolik") do
	visit edit_data_keagamaan_katolik_path
	fill_in "Judul", :with => "judul data keagamaan katolik yang dibuat oleh bukan pengguna"
	fill_in "Keterangan", :with => "keterangan data keagamaan katolik yang dibuat oleh bukan pengguna"
	click_button "Edit"
	expect(page).to have_content("Maaf, Anda tidak berhak mengeditnya.")
end

Dan("saya tidak dapat mengedit Informasi Berita Terkini") do
	visit edit_informasi_berita_terkini_path
	fill_in "Judul", :with => "judul Informasi Berita Terkini yang dibuat oleh bukan pengguna"
	fill_in "Keterangan", :with => "keterangan Informasi Berita Terkini yang dibuat oleh bukan pengguna"
	click_button "Edit"
	expect(page).to have_content("Maaf, Anda tidak berhak mengeditnya.")
end

Dan("saya tidak dapat mengedit Informasi Pengumuman") do
	visit edit_informasi_berita_terkini_path
	fill_in "Judul", :with => "judul Informasi Pengumuman yang dibuat oleh bukan pengguna"
	fill_in "Keterangan", :with => "keterangan Informasi Pengumuman yang dibuat oleh bukan pengguna"
	click_button "Edit"
	expect(page).to have_content("Maaf, Anda tidak berhak mengeditnya.")
end

Maka("saya tidak dapat menghapus Data Pendidikan Agama Katolik") do
	visit data_keagamaan_katolik_path
	click_button "Hapus"
	expect(page).to have_content("Maaf, Anda tidak berhak menghapusnya.")
end

Dan("saya tidak dapat menghapus Data Keagamaan Katolik") do
	visit data_keagamaan_katolik_path
	click_button "Hapus"
	expect(page).to have_content("Maaf, Anda tidak berhak menghapusnya.")
end

Dan("saya tidak dapat menghapus Informasi Berita Terkini") do
	visit data_keagamaan_katolik_path
	click_button "Hapus"
	expect(page).to have_content("Maaf, Anda tidak berhak menghapusnya.")
end

Dan("saya tidak dapat menghapus Informasi Pengumuman") do
	visit data_keagamaan_katolik_path
	click_button "Hapus"
	expect(page).to have_content("Maaf, Anda tidak berhak menghapusnya.")
end

Maka("saya tidak dapat melihat Laporan Guru Agama Katolik") do
	visit laporan_guru_agama_katolik_index_path
	expect(page).to have_content("Maaf, Anda tidak berhak melihatnya.")
end

Dan("saya tidak dapat melihat Laporan Penyuluh Agama Katolik") do
	visit laporan_guru_agama_katolik_index_path
	expect(page).to have_content("Maaf, Anda tidak berhak melihatnya.")
end

Dan("saya tidak dapat melihat Laporan Pegawai Bimkat Sumteng") do
	visit laporan_guru_agama_katolik_index_path
	expect(page).to have_content("Maaf, Anda tidak berhak melihatnya.")
end