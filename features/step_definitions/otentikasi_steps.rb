Dengan("saya mengunjungi aplikasi berbasis web") do
 visit root_path
end

Maka("saya berada di Beranda") do
	find("h1", :text => "Selamat datang di Aplikasi Web Bimas Katolik Sumba Tengah")
end

Ketika("saya mengisi form pendaftaran") do
	click_link "Sign Up"
	fill_in "Email", :with => "tester@testdomain.test"
	fill_in "Password", :with => "pa$$word"
	fill_in "Password confirmation", :with => "pa$$word"
	click_button "Sign Up"
end

Dan("saya mengonfirmasi email") do
	open_email("tester@testdomain.test")
	visit_in_email("Konfirmasi akun saya")
end

Maka("saya dapat melihat akun telah dikonfirmasi") do
	message = "Akun anda telah berhasil dikonfirmasi. Anda telah sign in."
	expect(page).to have_content(message)
end

Dengan("saya sebagai pengguna terdaftar") do
	@registered_pengguna = FactoryBot.create(:pengguna,
		:email => "tester@testdomain.test",
		:password => "pa$$word")
end

Dan("saya mengunjungi Beranda aplikasi") do
	visit root_path
end

Ketika("saya mengisi formulir masuk") do
	click_link "Sign In"
	fill_in "Email", :with => "tester@testdomain.test"
	fill_in "Password", :with => "pa$$word"
	click_button "Sign In"
end

Dan("saya berhasil masuk aplikasi") do
	expect(page).to have_content("Selamat datang di Aplikasi Web Bimas Katolik Sumba Tengah")
end

Dan("saya tekan tombol keluar") do
	click_link "Sign Out"
end

Maka("saya dialihkan ke halaman masuk") do
	expect(page).to have_content("Masuk")
end

Dan("saya dapat mengedit akun") do
	click_link "Edit Akun"
	click_button "Batal"
end