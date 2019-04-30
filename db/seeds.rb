# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts ""
puts "Seed database"
puts ""
puts ""
puts ""
puts "Membuat Pemakai"
pengguna_1 = Pengguna.create!(
	email: "guru_pendakat@kemenagsumteng.go.id",
	nama_lengkap: "Pegawai Pendakat",
	password: "qwerty",
	password_confirmation: "qwerty")
pengguna_1.confirm
pengguna_2 = Pengguna.create!(
	email: "pegawai_pendakat@kemenagsumteng.go.id",
	nama_lengkap: "Guru Pendakat",
	password: "qwerty",
	password_confirmation: "qwerty")
pengguna_2.confirm
pengguna_3 = Pengguna.create!(
	email: "penyelenggara_pendakat@kemenagsumteng.go.id",
	nama_lengkap: "Penyelenggara Pendakat",
	password: "qwerty",
	password_confirmation: "qwerty")
pengguna_3.confirm
pengguna_4 = Pengguna.create!(
	email: "penyuluh_urakat@kemenagsumteng.go.id",
	nama_lengkap: "Pegawai Urakat",
	password: "qwerty",
	password_confirmation: "qwerty")
pengguna_4.confirm
pengguna_5 = Pengguna.create!(
	email: "pegawai_urakat@kemenagsumteng.go.id",
	nama_lengkap: "Penyuluh Urakat",
	password: "qwerty",
	password_confirmation: "qwerty")
pengguna_5.confirm
pengguna_6 = Pengguna.create!(
	email: "kasie_urakat@kemenagsumteng.go.id",
	nama_lengkap: "Kasie Urakat",
	password: "qwerty",
	password_confirmation: "qwerty")
pengguna_6.confirm
pengguna_7 = Pengguna.create!(
	email: "administrator@kemenagsumteng.go.id",
	nama_lengkap: "Administrator",
	password: "qwerty",
	password_confirmation: "qwerty")
pengguna_7.confirm
puts ""
puts "Berhasil membuat #{Pengguna.count} pengguna"
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts "Membuat Penugasan Fungsi Pada pengguna"
# Assign guru_pendakat as guru_pendakat
pengguna_1 = Pengguna.find(1)
pengguna_1.guru_pendakat!
# Assign pegawai_pendakat as pegawai_pendakat
pengguna_2 = Pengguna.find(2)
pengguna_2.pegawai_pendakat!
# Assign penyelenggara_pendakat as penyelenggara_pendakat
pengguna_3 = Pengguna.find(3)
pengguna_3.penyelenggara_pendakat!
# Assign penyuluh_urakat as penyuluh_urakat
pengguna_4 = Pengguna.find(4)
pengguna_4.penyuluh_urakat!
# Assign pegawai_urakat as pegawai_urakat
pengguna_5 = Pengguna.find(5)
pengguna_5.pegawai_urakat!
# Assign kasie_urakat as kasie_urakat
pengguna_6 = Pengguna.find(6)
pengguna_6.kasie_urakat!
# Assign administrator as administrator
pengguna_7 = Pengguna.find(7)
pengguna_7.administrator!
puts ""
puts "Berhasil membuat peran"
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts "Membuat Data Keagamaan Katolik"
10.times do |i|
  DataKeagamaanKatolik.create(judul: "Judul data keagamaan katolik ke-#{i}", keterangan: "Keterangan data keagamaan katolik ke-#{i}", tautan: "148cjHGXBqqghbunQxGC2tDp8z1YeCnuN", pengguna_id: pengguna_5.id)
end
puts ""
puts "Berhasil membuat #{DataKeagamaanKatolik.count} Data Keagamaan Katolik"
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts "Membuat Data Pendidikan Agama Katolik"
10.times do |i|
  DataPendidikanAgamaKatolik.create(judul: "Judul data pendidikan agama katolik ke-#{i}", keterangan: "Keterangan data pendidikan agama katolik ke-#{i}", tautan: "148cjHGXBqqghbunQxGC2tDp8z1YeCnuN", pengguna_id: pengguna_2.id)
end
puts ""
puts "Berhasil membuat #{DataPendidikanAgamaKatolik.count} Data Pendidikan Agama Katolik"
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts "Membuat Informasi Berita Terkini"
10.times do |i|
  InformasiBeritaTerkini.create(judul: "Judul informasi berita terkini ke-#{i}", keterangan: "Keterangan informasi berita terkini ke-#{i}", tautan: "148cjHGXBqqghbunQxGC2tDp8z1YeCnuN", pengguna_id: pengguna_2.id)
end
10.times do |i|
  InformasiBeritaTerkini.create(judul: "Judul informasi berita terkini ke-#{i}", keterangan: "Keterangan informasi berita terkini ke-#{i}", tautan: "148cjHGXBqqghbunQxGC2tDp8z1YeCnuN", pengguna_id: pengguna_5.id)
end
puts ""
puts "Berhasil membuat #{InformasiBeritaTerkini.count} Informasi Berita Terkini"
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts "Membuat Informasi Pengumuman"
10.times do |i|
  InformasiPengumuman.create(judul: "Judul informasi pengumuman ke-#{i}", keterangan: "Keterangan informasi pengumuman ke-#{i}", tautan: "148cjHGXBqqghbunQxGC2tDp8z1YeCnuN", pengguna_id: pengguna_2.id)
end
10.times do |i|
  InformasiPengumuman.create(judul: "Judul informasi pengumuman ke-#{i}", keterangan: "Keterangan informasi pengumuman ke-#{i}", tautan: "148cjHGXBqqghbunQxGC2tDp8z1YeCnuN", pengguna_id: pengguna_5.id)
end
puts ""
puts "Berhasil membuat #{InformasiPengumuman.count} Informasi Pengumuman"
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts "Membuat Laporan Guru Agama Katolik"
12.times do |i|
  LaporanGuruAgamaKatolik.create(judul: "Judul laporan guru agama katolik bulan ke-#{i}", tautan: "148cjHGXBqqghbunQxGC2tDp8z1YeCnuN", pengguna_id: pengguna_1.id)
end
puts ""
puts "Berhasil membuat #{LaporanGuruAgamaKatolik.count} Laporan Guru Agama Katolik"
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts "Membuat Laporan Penyuluh Agama Katolik"
12.times do |i|
  LaporanPenyuluhAgamaKatolik.create(judul: "Judul laporan guru agama katolik bulan ke-#{i}", tautan: "148cjHGXBqqghbunQxGC2tDp8z1YeCnuN", pengguna_id: pengguna_4.id)
end
puts ""
puts "Berhasil membuat #{LaporanPenyuluhAgamaKatolik.count} Laporan Penyuluh Agama Katolik"
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts "Membuat Laporan Pegawai Bimkat Sumteng"
12.times do |i|
  LaporanPegawaiBimkatSumteng.create(judul: "Judul laporan pegawai pendakat bulan ke-#{i}", tautan: "148cjHGXBqqghbunQxGC2tDp8z1YeCnuN", pengguna_id: pengguna_2.id)
end
12.times do |i|
  LaporanPegawaiBimkatSumteng.create(judul: "Judul laporan pegawai pendakat bulan ke-#{i}", tautan: "148cjHGXBqqghbunQxGC2tDp8z1YeCnuN", pengguna_id: pengguna_3.id)
end
12.times do |i|
  LaporanPegawaiBimkatSumteng.create(judul: "Judul laporan pegawai urakat bulan ke-#{i}", tautan: "148cjHGXBqqghbunQxGC2tDp8z1YeCnuN", pengguna_id: pengguna_5.id)
end
12.times do |i|
  LaporanPegawaiBimkatSumteng.create(judul: "Judul laporan pegawai urakat bulan ke-#{i}", tautan: "148cjHGXBqqghbunQxGC2tDp8z1YeCnuN", pengguna_id: pengguna_6.id)
end
puts ""
puts "Berhasil membuat #{LaporanPegawaiBimkatSumteng.count} Laporan Pegawai Bimkat Sumteng"
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts "Proses seed database selesai"
