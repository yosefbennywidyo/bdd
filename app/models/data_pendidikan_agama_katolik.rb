class DataPendidikanAgamaKatolik < ApplicationRecord
  belongs_to :pengguna
  validates_length_of :judul, minimum: 5, too_short: 'Judul data pendidikan agama katolik terlalu pendek, minimal 5 karakter!'
  validates_length_of :keterangan, minimum: 5, too_short: 'Keterangan data pendidikan agama katolik terlalu pendek, minimal 5 karakter!'
	validates_length_of :tautan, minimum: 33, too_short: 'Pastikan Anda telah menyalin File ID pada Google Drive, minimal 33 karakter'
end
