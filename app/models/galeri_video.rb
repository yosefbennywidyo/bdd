class GaleriVideo < ApplicationRecord
  belongs_to :pengguna
  validates_length_of :judul, minimum: 5, too_short: 'Judul video terlalu pendek, minimal 5 karakter!'
  validates_length_of :keterangan, minimum: 5, too_short: 'Keterangan video terlalu pendek, minimal 5 karakter!'
  validates_length_of :tautan, minimum: 10, too_short: 'Pastikan Anda telah menyalin File ID pada YouTube, minimal 10 karakter'
end
