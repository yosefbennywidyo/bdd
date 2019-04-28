# language: id

Fitur: Otentikasi

	Sebagai pemirsa
	saya dapat melihat:
	Beranda, Data Keagamaan Katolik, Data Pendidikan Agama Katolik, Informasi Berita Terkini, dan Informasi Pengumuman

	namun saya tidak dapat melihat:
	Laporan Guru Agama Katolik, Laporan Penyuluh Agama Katolik, dan Laporan Pegawai Bimkat Sumteng karena saya tidak memiliki hak.

Skenario: Pemirsa masuk ke aplikasi
	Dengan saya mengunjungi Beranda aplikasi
	Ketika saya mencoba mengisi formulir masuk
	Maka saya tidak berhasil masuk aplikasi

Skenario: Mendaftar sebagai Pemirsa
	Dengan saya mengunjungi aplikasi berbasis web
	Maka saya berada di Beranda
	Ketika saya klik mendaftar
	Dan mendaftar sebagai Pemirsa
	Dan saya mengonfirmasi email
	Maka saya dapat melihat akun telah dikonfirmasi

Skenario: Mengunjungi aplikasi sebagai pemirsa
	Dengan saya mengunjungi aplikasi berbasis web
	Maka saya berada di Beranda
	Ketika saya klik masuk
	Dan memasukkan detil sebagai pemirsa

Skenario: Melihat-lihat aplikasi
	Maka saya dapat melihat Data Keagamaan Katolik
	Dan saya dapat melihat Data Pendidikan Agama Katolik
	Dan saya dapat melihat Informasi Berita Terkini
	Dan saya dapat melihat Informasi Pengumuman
	Tapi saya tidak dapat membuat Data Keagamaan Katolik
	Dan saya tidak dapat membuat Data Pendidikan Agama Katolik
	Dan saya tidak dapat membuat Informasi Berita Terkini
	Dan saya tidak dapat membuat Informasi Pengumuman
	Tapi saya tidak dapat mengedit Data Keagamaan Katolik
	Dan saya tidak dapat mengedit  Data Pendidikan Agama Katolik
	Dan saya tidak dapat mengedit Informasi Berita Terkini
	Dan saya tidak dapat mengedit Informasi Pengumuman
	Tapi saya tidak dapat menghapus Data Keagamaan Katolik
	Dan saya tidak dapat menghapus Data Pendidikan Agama Katolik
	Dan saya tidak dapat menghapus Informasi Berita Terkini
	Dan saya tidak dapat menghapus Informasi Pengumuman
	Tapi saya tidak dapat melihat Data Keagamaan Katolik
	Dan saya tidak dapat melihat Laporan Guru Agama Katolik
	Dan saya tidak dapat melihat Laporan Penyuluh Agama Katolik
	Dan saya tidak dapat melihat Laporan Pegawai Bimkat Sumteng