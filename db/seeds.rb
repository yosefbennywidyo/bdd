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
pengguna = Pengguna.create!(
	email: "guru_pendakat@kemenagsumteng.go.id",
	nama_lengkap: "Pegawai Pendakat",
	password: "qwerty",
	password_confirmation: "qwerty")
pengguna.skip_confirmation_notification!
pengguna = Pengguna.create!(
	email: "pegawai_pendakat@kemenagsumteng.go.id",
	nama_lengkap: "Guru Pendakat",
	password: "qwerty",
	password_confirmation: "qwerty")
pengguna.skip_confirmation_notification!
pengguna = Pengguna.create!(
	email: "penyelenggara_pendakat@kemenagsumteng.go.id",
	nama_lengkap: "Penyelenggara Pendakat",
	password: "qwerty",
	password_confirmation: "qwerty")
pengguna.skip_confirmation_notification!
pengguna = Pengguna.create!(
	email: "penyuluh_urakat@kemenagsumteng.go.id",
	nama_lengkap: "Pegawai Urakat",
	password: "qwerty",
	password_confirmation: "qwerty")
pengguna.skip_confirmation_notification!
pengguna = Pengguna.create!(
	email: "pegawai_urakat@kemenagsumteng.go.id",
	nama_lengkap: "Penyuluh Urakat",
	password: "qwerty",
	password_confirmation: "qwerty")
pengguna.skip_confirmation_notification!
pengguna = Pengguna.create!(
	email: "kasie_urakat@kemenagsumteng.go.id",
	nama_lengkap: "Kasie Urakat",
	password: "qwerty",
	password_confirmation: "qwerty")
pengguna.skip_confirmation_notification!
pengguna = Pengguna.create!(
	email: "administrator@kemenagsumteng.go.id",
	nama_lengkap: "Administrator",
	password: "qwerty",
	password_confirmation: "qwerty")
pengguna.skip_confirmation_notification!
puts ""
puts "Berhasil membuat #{Pengguna.count} pengguna"
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts "Membuat Penugasan Fungsi Pada pengguna"
pengguna = Pengguna.find(1)
pengguna.guru_pendakat!
pengguna = Pengguna.find(2)
pengguna.pegawai_pendakat!
pengguna = Pengguna.find(3)
pengguna.penyelenggara_pendakat!
pengguna = Pengguna.find(4)
pengguna.penyuluh_urakat!
pengguna = Pengguna.find(5)
pengguna.pegawai_urakat!
pengguna = Pengguna.find(6)
pengguna.kasie_urakat!
pengguna = Pengguna.find(7)
pengguna.administrator!
puts ""
puts "Berhasil membuat peran"
puts ""
puts ""
puts ""
puts "Proses seed database selesai"
