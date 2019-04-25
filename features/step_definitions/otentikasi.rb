Dengan("saya mengunjungi aplikasi berbasis web") do
 visit root_path
end

Maka("saya berada di Beranda") do
	find("h1", :text => "Selamat datang di Aplikasi Web Bimas Katolik Sumba Tengah")
end

Ketika("saya mengisi form pendaftaran") do
	click_link "Mendaftar"
	fill_in "user_email", :with => "tester@testdomain.test"
	fill_in "user_password", :with => "pa$$word"
	fill_in "user_password_confirmation", :with => "pa$$word"
	click_button "Mendaftar"
end

Dan("saya mengonfirmasi email") do
	open_email("tester@testdomain.test")
	visit_in_email("Konfirmasi akun saya")
end

Maka("saya dapat melihat akun telah dikonfirmasi") do
	message = "Anda telah sukses mengonfirmasi email"
	expect(page).to has(message)
end

Dengan("saya sebagai pengguna terdaftar") do
	@registered_user = FactoryBot.create(:user,
		:email => "tester@testdomain.test",
		:password => "pa$$word")
end

Dan("saya mengunjungi Beranda aplikasi") do
	visit root_path
end

Ketika("saya mengisi formulir masuk") do
	fill_in "user_email", :with => "tester@testdomain.test"
	fill_in "user_password", :with => "pa$$word"
	click_button "Masuk"
end

Maka("saya berhasil masuk aplikasi") do
	expect(page).to have_content("Logged in")
end

Ketika("saya tekan tombol keluar") do
	click_button "Keluar"
end

Maka("saya dialihkan ke halaman masuk") do
	expect(page).to have_content("Masuk")
end