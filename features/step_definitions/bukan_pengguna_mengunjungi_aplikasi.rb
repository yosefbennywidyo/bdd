Ketika("saya mencoba mengisi formulir masuk") do
	click_link "Masuk"
	fill_in "Email", :with => "pemirsa@user.test"
	fill_in "Password", :with => "pa$$word"
	click_button "Masuk"
end

Tapi("saya tidak berhasil masuk aplikasi") do
	expect(page).to have_content("Ketidaksesuaian Email atau password.")
end