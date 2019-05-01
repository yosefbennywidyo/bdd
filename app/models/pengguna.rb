class Pengguna < ApplicationRecord
  validates_length_of :nama_lengkap, minimum: 6, too_short:  'Nama lengkap terlalu pendek, minimal 6 karakter! Contoh: Rifaid'
	enum peran: [:pemirsa, :guru_pendakat, :pegawai_pendakat, :penyelenggara_pendakat, :penyuluh_urakat, :pegawai_urakat, :kasie_urakat, :administrator]
  after_initialize :set_peran_default, :if => :new_record?
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable, :trackable

  has_many :data_keagamaan_katolik, dependent: :destroy
  has_many :data_pendidikan_agama_katolik, dependent: :destroy
  has_many :informasi_berita_terkini, dependent: :destroy
  has_many :informasi_pengumuman, dependent: :destroy
  has_many :laporan_guru_agama_katolik, dependent: :destroy
  has_many :laporan_penyuluh_agama_katolik, dependent: :destroy
  has_many :laporan_pegawai_bimkat_sumteng, dependent: :destroy

  def set_peran_default
    self.peran ||= :pemirsa
  end

  def self.from_omniauth(access_token)
    data = access_token.info
    pengguna = Pengguna.where(email: data['email']).first

    # Uncomment the section below if you want users to be created if they don't exist
    unless pengguna
      pengguna = Pengguna.create(
        nama_lengkap: data['name'],
        email: data['email'],
        password: Devise.friendly_token[0,20]
      )
    end
    pengguna
  end

  devise :omniauthable, omniauth_providers: [:google_oauth2]
end
