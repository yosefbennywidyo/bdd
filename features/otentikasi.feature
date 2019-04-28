
# language: id

Fitur: Otentikasi

	Untuk menggunakan apliksasi berbasis web
	Sebagai pengguna
	saya dapat melihat beranda, mendaftar, masuk, dan keluar

Skenario: Seed data keagamaan katolik
	Dengan data keagamaan katolik tersedia di database

Skenario: Seed data pendidikan agama katolik
	Dengan data pendidikan agama katolik tersedia di database

Skenario: Seed informasi berita terkini
	Dengan informasi berita terkini tersedia di database

Skenario: Seed informasi pengumuman
	Dengan informasi pengumuman tersedia di database

Skenario: Mengunjungi aplikasi
	Dengan saya mengunjungi aplikasi berbasis web
	Maka saya berada di Beranda

Skenario: Mendaftar
	Dengan saya mengunjungi aplikasi berbasis web
	Maka saya berada di Beranda
	Ketika saya mengisi form pendaftaran
	Dan saya mengonfirmasi email
	Maka saya dapat melihat akun telah dikonfirmasi

Skenario: Pengguna masuk ke aplikasi
	Dengan saya sebagai pengguna terdaftar
	Dan saya mengunjungi Beranda aplikasi
	Ketika saya mengisi formulir masuk
	Dan saya berhasil masuk aplikasi

Skenario: Pengguna mengedit akun
	Dengan saya sebagai pengguna terdaftar
	Dan saya mengunjungi Beranda aplikasi
	Ketika saya mengisi formulir masuk
	Maka saya berhasil masuk aplikasi
	Dan saya dapat mengedit akun

Skenario: Pengguna keluar dari aplikasi
	Dengan saya sebagai pengguna terdaftar
	Dan saya mengunjungi Beranda aplikasi
	Ketika saya mengisi formulir masuk
	Maka saya berhasil masuk aplikasi
	Dan saya tekan tombol keluar
	Maka saya dialihkan ke halaman masuk