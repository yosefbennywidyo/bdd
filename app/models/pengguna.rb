class Pengguna < ApplicationRecord
  validates_length_of :nama_lengkap, minimum: 6, too_short:  'Nama lengkap terlalu pendek, minimal 6 karakter! Contoh: Rifaid'
	enum peran: [:pemirsa, :guru_pendakat, :pegawai_pendakat, :penyelenggara_pendakat, :penyuluh_urakat, :pegawai_urakat, :kasie_urakat, :administrator]
  after_initialize :set_peran_default, :if => :new_record?
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_many :data_keagamaan_katolik, dependent: :destroy
  has_many :data_pendidikan_agama_katolik, dependent: :destroy
  has_many :informasi_berita_terkini, dependent: :destroy
  has_many :informasi_pengumuman, dependent: :destroy

  def set_peran_default
    self.peran ||= :pemirsa
  end
end
