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

Tapi("saya tidak dapat membuat Data Keagamaan Katolik") do
	visit new_data_keagamaan_katolik_path
	fill_in "Judul", :with => "judul yang dibuat oleh bukan pengguna"
	fill_in "Keterangan", :with => "keterangan yang dibuat oleh bukan pengguna"
	click_button "Membuat"
end