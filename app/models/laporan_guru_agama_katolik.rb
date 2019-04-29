class LaporanGuruAgamaKatolik < ApplicationRecord
  belongs_to :pengguna
  validates_length_of :judul, minimum: 5, too_short: 'Judul informasi pengumuman terlalu pendek, minimal 7 karakter!'
  validates_length_of :tautan, minimum: 33, too_short: 'Pastikan Anda telah menyalin File ID pada Google Drive, minimal 33 karakter'
end
