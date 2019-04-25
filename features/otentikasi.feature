
# language: id

Fitur: Otentikasi

	Untuk menggunakan apliksasi berbasis web
	Sebagai pengguna
	saya dapat melihat beranda, mendaftar, masuk, dan keluar


Skenario: Mengunjungi aplikasi
	Dengan saya mengunjungi aplikasi berbasis web
	Maka saya berada di Beranda

Skenario: Mendaftar
	Dengan saya mengunjungi Beranda aplikasi
	Ketika saya mengisi form pendaftaran
	Dan saya mengonfirmasi email
	Maka saya dapat melihat akun telah dikonfirmasi

Skenario: Pengguna masuk ke aplikasi
	Dengan saya sebagai pengguna terdaftar
	Dan saya mengunjungi Beranda aplikasi
	Ketika saya mengisi formulir masuk
	Maka saya berhasil masuk aplikasi

Skenario: Pengguna keluar dari aplikasi
	Dengan saya sebagai pengguna terdaftar
	Dan saya berhasil masuk
	Dan saya mengunjungi Beranda
	Ketika saya klik tombol keluar
	Maka saya dialihkan ke halaman masuk