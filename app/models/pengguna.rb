class Pengguna < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_many :data_keagamaan_katolik, dependent: :destroy
  has_many :data_pendidikan_agama_katolik, dependent: :destroy
  has_many :informasi_berita_terkini, dependent: :destroy
  has_many :informasi_pengumuman, dependent: :destroy
end
