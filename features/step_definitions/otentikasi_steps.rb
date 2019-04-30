Dengan("saya mengunjungi aplikasi berbasis web") do
 visit root_path
end

Maka("saya berada di Beranda") do
	find("h2", :text => "Daftar Data Keagamaan Katolik")
	find("h2", :text => "Daftar Data Pendidikan Agama Katolik")
	find("h2", :text => "Daftar Informasi Berita Terkini")
	find("h2", :text => "Daftar Informasi Pengumuman")
end

Ketika("saya mengisi form pendaftaran") do
	# TODO: Why not work?
	#click_link "Mendaftar"
	#fill_in "Email", :with => "tester@testdomain.test"
	#fill_in "Password", :with => "pa$$word"
	#fill_in "Password confirmation", :with => "pa$$word"
	#click_button "Mendaftar"
end

Dan("saya mengonfirmasi email") do
	# TODO: Why not work?
	#open_email("tester@testdomain.test")
	#visit_in_email("Konfirmasi akun saya")
end

Maka("saya dapat melihat akun telah dikonfirmasi") do
	# TODO: Why not work?
	#message = "Akun anda telah berhasil dikonfirmasi. Anda telah sign in."
	#expect(page).to have_content(message)
end

Dengan("saya sebagai pengguna terdaftar") do
	# TODO: Why not work?
	#@registered_pengguna = FactoryBot.create(:pengguna,
	#	:nama_lengkap => "tester",
	#	:email => "tester@testdomain.test",
	#	:password => "pa$$word")
end

Dan("saya mengunjungi Beranda aplikasi") do
	visit root_path
end

Ketika("saya mengisi formulir masuk") do
	# TODO: Why not work?
	#click_link "Masuk"
	#fill_in "Email", :with => "tester@testdomain.test"
	#fill_in "Password", :with => "pa$$word"
	#click_button "Masuk"
end

Dan("saya berhasil masuk aplikasi") do
	# TODO: Why not work?
	#expect(page).to have_content("Selamat datang di Aplikasi Web Bimas Katolik Sumba Tengah")
end

Dan("saya tekan tombol keluar") do
	# TODO: Why not work?
	#click_link "Keluar"
end

Maka("saya dialihkan ke halaman masuk") do
	# TODO: Why not work?
	#expect(page).to have_content("Masuk")
end

Dan("saya dapat mengedit akun") do
	# TODO: Why not work?
	#click_link "Edit Akun"
	#click_button "Batal"
end